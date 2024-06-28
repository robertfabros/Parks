Rails.application.routes.draw do
  get 'districts/show'
  get 'neighbourhoods/show'
  root 'home#index'
  get 'about', to: 'home#about'
  get 'search', to: 'home#search'
  resources :about, only: [:index]
  resources :parks, only: [:index, :show]
  resources :urban_trees, only: [:index, :show]
  resources :school_zones
  resources :districts, only: [:index, :show]
  resources :neighbourhoods, only: [:index, :show]


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Mount ActiveStorage routes for direct uploads
  direct_uploads = ActiveStorage::DirectUploadsController.action_methods.map { |action| "/rails/active_storage/direct_uploads/#{action}" }
  match(*direct_uploads, to: 'active_storage/direct_uploads#create', via: [:post])
end
