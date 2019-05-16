Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/login', to: 'sessions#destroy'
  get '/show', to: 'secrets#show'
  root 'sessions#new'
end
