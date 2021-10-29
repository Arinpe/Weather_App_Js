class ApplicationController < ActionController::API
  include ActionController::Serialization
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActiveRecord::RecordInvalid, with: :invalid
  rescue_from ActiveRecord::RecordNotUnique, with: :not_unique

  private

  def not_found(errors)
    render json: errors, status: :not_found
  end

  def invalid(errors)
    render json: errors, status: :unprocessable_entity
  end

  def not_unique(errors)
    render json: errors, status: :internal_server_error
  end
end
