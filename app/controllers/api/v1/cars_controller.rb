module Api::V1
  class CarsController < SecuredController
    def index
      render json: Car.all, status: :ok
    end

    def show
      @car = Car.find(params[:id])
      return render json: @car, status: :ok if @car
    end
  end
end
