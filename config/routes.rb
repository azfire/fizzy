Rails.application.routes.draw do
  root "splats#index"

  resources :categories, only: %i[index destroy]
  resource :session

  resources :splats do
    resources :categories, only: %i[new create]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
