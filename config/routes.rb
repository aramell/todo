Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#index"

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show'
  post '/tasks', to: 'tasks#create'
  put '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'teams#destroy'

end
