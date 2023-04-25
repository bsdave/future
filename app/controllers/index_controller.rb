class IndexController < ApplicationController
  protect_from_forgery with: :null_session, only: :create_payment

  def index
  end

  def create_payment
    Rails.logger.warn(params)

    render json: {
      "status": 1,
      "message": "Успешно"
    }
  end
end
