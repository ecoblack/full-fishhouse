Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#home'

  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get :autocomplete, controller: :main
  get :search, controller: :main 

  resources :categories
  resources :products

#DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
 