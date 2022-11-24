Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :cars, only: %i[home index show new create] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index]
end
