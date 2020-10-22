Rails.application.routes.draw do
  root :to => 'pages#index'

  resources :users, :only => [:new, :create, :index]
  resources :videos
  resources :centers
  resources :scubas
  resources :accounts, :only => [:index]
  get '/account/myvideos' => 'accounts#myvideos'
  get '/account/mycenters' => 'accounts#mycenters'
  get '/account/myscubas' => 'accounts#myscubas'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
