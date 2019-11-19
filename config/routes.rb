Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :flats, only: [:index, :show, :new, :edit, :create, :delete] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  # resources :users, only: [:show]
  root to: 'pages#home'
end
