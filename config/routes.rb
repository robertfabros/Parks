Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'
  get 'search', to: 'home#search'

  resources :parks, only: [:index]
  resources :urban_trees, only: [:index]
  resources :school_zones, only: [:index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
