Rails.application.routes.draw do
  root to: 'books#index', as: 'books'
  devise_for :users
  get '/new', to: 'books#new', as: 'new_book'
  get '/books/:id', to: 'books#show', as: 'book'
  post '/', to: 'books#create'
  post '/books/:id', to: 'cart#create', as: 'add_to_cart'
  get '/cart', to: 'cart#show', as: 'cart'
end
