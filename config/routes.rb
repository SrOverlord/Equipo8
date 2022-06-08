Rails.application.routes.draw do
  resources :cuenta_bancas
  devise_for :users
  resources :users
  # resources :cuenta_bancos
  # resources :users
  # get 'porjects/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'main#home'
 

 


  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
        resources :cuenta_bancas
        get '/cuenta_banca/:id/:user_id(.:format)'  => 'cuenta_bancas#showID' , as: 'get_cuenta_id'
     resources :users
     devise_for :users
          end
   end

   

end
