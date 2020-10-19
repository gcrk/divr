Rails.application.routes.draw do
  root :to => 'pages#index'

  resources :users, :only => [:new, :create, :index]
  resources :videos
  resources :centers
  resources :scubas



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
