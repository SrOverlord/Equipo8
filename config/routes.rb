Rails.application.routes.draw do
  resources :cuenta_bancas
  devise_for :users
  root 'main#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
     resources :cuenta_bancas
     resources :users
          end
   end

end
