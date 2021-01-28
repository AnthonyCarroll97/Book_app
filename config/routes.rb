Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'books#index', as: 'books'
  get '/new', to: 'books#new', as: 'book'
  post '/', to: 'books#create'
  
end
