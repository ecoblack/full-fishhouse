Rails.application.routes.draw do
 get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  resources :categories
  resources :products

root to: 'products#index'
#DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
end
 