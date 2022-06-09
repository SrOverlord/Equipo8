Rails.application.routes.draw do
  resources :wallet_criptos
  get 'cripto/criptoVista'
  resources :tarjeta
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
      resources :tarjeta
      resources :cuenta_bancas
      get '/cuenta_bancas/:id/:user_id', to: 'cuenta_bancas#showID', as: 'cuenta'
      get '/cuenta_bancas/:user_id/soloId', to: 'cuenta_bancas#showSoloID', as: 'cuentaID'
      
        # get '/cuenta_banca/:id(.:format)/:user_id(.:format)'  => 'cuenta_bancas#showID' , as: 'get_cuenta_id'
     resources :users
     devise_for :users
          end
   end

   

end
