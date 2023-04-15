Rails.application.routes.draw do
  get '/', to: 'chat#index', format: false
  get 'rooms', to: 'chat#rooms'
  get 'rooms/:id', to: 'chat#room'
  put 'rooms', to: 'chat#join_room'
  post 'rooms', to: 'chat#create_room'
  post 'users', to: 'user#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
