Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :cars, only: %i[show index]

  # Defines the root path route ("/")
  # root "articles#index"

  resources :cars do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :destroy
  # post "booking/incoming", to: 'booking#accept_or_reject', as: 'incoming'
end
