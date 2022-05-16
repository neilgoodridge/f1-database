Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # get 'drivers', to: 'pages#drivers.html'
  resources :pages
  get '/search' => 'pages#search'
end
