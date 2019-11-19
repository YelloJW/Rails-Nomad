Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :flats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
    resources :reviews
  end
  root to: 'pages#home'
end

