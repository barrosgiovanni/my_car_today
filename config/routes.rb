Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :cars, only: %i[home index show new create] do
    resources :bookings, only: %i[new create]
  end
  # post "booking/incoming", to: 'booking#accept_or_reject', as: 'incoming'
end
