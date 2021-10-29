module Api::V1
  class UsersController < SecuredController
    skip_before_action :authorize_request, only: [:index]

    def index
      @welcome = 'Welcome to my App!'
      render html: @welcome
    end

    def create
      @user = User.find_by(email: params[:email])
      return render json: @user, status: :ok if @user

      user = User.create!(user_params)
      render json: user, status: :created
    end

    def show
      @user = User.find(params[:id])
      return render json: @user.cars, status: :ok if @user
    end

    def new_appointment
      @user = User.find_by(id: appointment_params[:user_id])
      @car = Car.find_by(id: appointment_params[:car_id])
      appointment = Appointment.create!(appointment_params)
      render json: appointment, status: :created
    end

    private

    def user_params
      params.permit(:username, :email)
    end

    def appointment_params
      params.permit(:car_id, :user_id, :date, :city)
    end
  end
end
