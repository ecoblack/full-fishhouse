Rails.application.routes.draw do
  






  namespace :admin do
    resources :categories
    resources :products

    root to: "categories#index"
  end

  root 'static_pages#home'

  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  #get  '/horeca',   to: 'static_pages#horeca'
  get :autocomplete, controller: :main
  get :search, controller: :main 
  get  '/horeca', to: 'contacts#new'


  resources :categories
  resources :products
  resources :contacts, only: [:new, :create] 



  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  get 'errors/not_found'
  get 'errors/internal_server_error'
end
 