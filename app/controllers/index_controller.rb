class IndexController < ApplicationController
  protect_from_forgery with: :null_session, only: [:create_payment, :screening_alert]

  def index
  end

  def about
  end

  def create_payment
    Rails.logger.warn(params)

    render json: {
      status: 1,
      message: "Успешно"
    }
  end

  def screening_alert
    Rails.logger.warn(("#" * 10) + "screening_alert" + ("#" * 10))
    Rails.logger.warn(request.headers["X-Salv-Token"])
    Rails.logger.warn(params)
    Rails.logger.warn(("#" * 10) + "screening_alert" + ("#" * 10))

    render json: {
      response: "stubbed"
    }
  end
end
