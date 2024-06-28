Rails.application.routes.draw do
  get 'districts/show'
  get 'neighbourhoods/show'
  root 'home#index'
  get 'about', to: 'home#about'
  get 'search', to: 'home#search'
  resources :about, only: [:index]
  resources :parks, only: [:index, :show]
  resources :urban_trees, only: [:index, :show]
  resources :school_zones, only: [:index, :show]
  resources :districts, only: [:index, :show]
  resources :neighbourhoods, only: [:index, :show]


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
