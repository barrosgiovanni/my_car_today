Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :cars, only: %i[home index show new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index] do
    collection do
      get :cars_host
    end
  end
end
