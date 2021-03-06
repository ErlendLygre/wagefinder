Rails.application.routes.draw do
  devise_for :registrations, :controllers => {registrations: "registrations"}
  resources :wages, only: [ :create, :new ]
  post 'preview', to: 'wages#preview'
  get 'preview', to: 'pages#test'
  get 'fields', to: 'users#fields'
  get 'companies', to: 'users#companies'
  resources :users, only: [ :index, :create ]
  root to: 'pages#home'
end
