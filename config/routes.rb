Schn3::Application.routes.draw do
  resources :articles, :users
  resources :interests
  resources :sessions, only: [:new, :create, :destroy]
  root 'sessions#new'

  match '/signout', to: 'sessions#destroy', via: 'delete'
end
