Rails.application.routes.draw do
  root to: 'authors#index'

  get '/authors', to: 'authors#index'
  get '/authors/:id', to: 'authors#show'
  get '/authors/:id/todos', to: 'todos#index', as: "todos"

  post '/authors', to: 'authors#create'
  post '/authors/:id/todos', to: 'todos#create'
end
