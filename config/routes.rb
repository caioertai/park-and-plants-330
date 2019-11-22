Rails.application.routes.draw do
  resources :plants, only: [:destroy] do
    resources :taggings, only: [:new, :create]
  end

  resources :gardens do
    resources :plants, only: [:new, :create]
  end
end
