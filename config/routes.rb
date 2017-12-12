Rails.application.routes.draw do
  devise_for :registrations
  resources :wages, only: [ :create, :new ]
  post 'preview', to: 'wages#preview'
  resources :users, only: [ :index, :create ]
  root to: 'pages#home'
end
