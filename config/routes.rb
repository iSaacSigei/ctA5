Rails.application.routes.draw do
  resources :users
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/sessions', to: 'sessions#show' # Add this route
  resources :import_orders, only: [:create]
  resources :export_orders, only: [:create]
end
