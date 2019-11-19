Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
    devise_for :users
  root to: 'pages#home'
  resources :flats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show]

