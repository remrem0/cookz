Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :menus, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  namespace :account do
    resources :menus, only: [:index, :show, :new, :create]
    resources :bookings, only: [:index, :show]
    resources :reservations, only: [:index, :show]
    resource :profile, only: [:show]
  end
end
