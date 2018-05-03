Rails.application.routes.draw do
  






  root 'static_pages#home'

  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get :autocomplete, controller: :main
  get :search, controller: :main 

  resources :categories
  resources :products


  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  get 'errors/not_found'
  get 'errors/internal_server_error'
end
 