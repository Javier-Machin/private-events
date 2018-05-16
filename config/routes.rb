Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users,  only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
  resources :invitations
  root 'events#index'
end
