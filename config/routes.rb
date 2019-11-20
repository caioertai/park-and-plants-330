Rails.application.routes.draw do
  resources :plants, only: [:destroy]

  resources :gardens do
    resources :plants, only: [:new, :create]
  end
end
