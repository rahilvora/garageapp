Rails.application.routes.draw do
  get 'admin/index'

  devise_for :admins 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # You can have the root of your site routed with "root"
  resources :cars
  
  namespace :admin do
    resources :cars
  end
  
  root 'pages#home'

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

 
end
