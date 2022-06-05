Rails.application.routes.draw do
  resources :usuarios
  resources :perros
  # get 'porjects/index'
  resources :developers
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
	
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
     resources :projects
    end
   end

   
  root to: 'projects#index'

end
