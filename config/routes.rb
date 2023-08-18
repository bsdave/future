Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root  "index#index"
  post "/api/v1/atmos_pay/create_payment", to: "index#create_payment"
  post "/api/v1/salv/screening_alert", to: "index#screening_alert"
end
