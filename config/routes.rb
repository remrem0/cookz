Rails.application.routes.draw do

  devise_for :users
  as :user do
    get 'account/profile', :to => 'account/profiles#show', :as => :user_root # Rails 3
  end

  root to: 'pages#home'
  resources :menus, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  namespace :account do
    resources :menus, only:        [:index, :show, :new, :create, :edit, :update]
    resources :bookings, only:     [:index, :show]
    resources :reservations, only: [:index, :show] do
      member do
        patch "confirm"
        patch "cancel"
      end
    end
    resource  :profile, only:      [:show]
  end
end
