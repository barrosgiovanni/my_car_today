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

  put "confirm_booking/:id", as: :confirm_booking, to: "bookings#confirm"
  put "reject_booking/:id", as: :reject_booking, to: "bookings#reject"
end
