Rails.application.routes.draw do
  resources :categories
  resources :products
  resources :static_pages
root to: 'products#index'
#DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
