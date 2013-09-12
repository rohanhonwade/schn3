Schn3::Application.routes.draw do
  root 'index#welcome'
  resources :interests
  resources :articles, :users
end
