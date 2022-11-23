Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :cars, only: %i[home index show] do
    resources :bookings, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  get '/cars', to: 'cars#index'
  get '/cars/new', to: 'cars#new'
  post '/cars', to: 'cars#create'
end
