module Api::V1
  class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login, :new_appointment, :show]

    def index
      @welcome = 'Welcome to my App!'
      render html: @welcome
    end

  # REGISTER
  def create
    if current_user
     render json: "authorized", status: 422
     return
    end
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  
  def show
    @user = User.find(current_user.id)
    return render json: @user.cars, status: :ok if @user
  end

  def new_appointment
    @car = Car.find_by(id: appointment_params[:car_id])
    obj = {
      car_id: appointment_params[:car_id],
      date: appointment_params[:date],
      city: appointment_params[:city],
      user_id: current_user.id
    }
    appointment = Appointment.create!(obj)
    render json: appointment, status: :created
  end

  def get_appointments
    appointments = Appointment.where(user_id: current_user.id)

    render json: appointments.to_json(include: [:car]), status: :ok
  end

  def auto_login
    render json: @user
  end

  private

    def user_params
      params.permit(:username, :password)
    end

    def appointment_params
      params.permit(:car_id, :date, :city)
    end
  end
end
