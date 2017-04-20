Rails.application.routes.draw do
  resources :products
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
   
    root 'blogs#index'
    resources :blogs do
      resources :comments
  
     resources :comments do
      resources :replies
    end
    end
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
