Rails.application.routes.draw do
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  get    '/signup',     to: 'users#new'
  post   '/signup',     to: 'users#create'
  get    '/profile',    to: 'users#show'
  delete '/logout',     to: 'sessions#destroy'
  get    '/pending',    to: 'users#pending_invitations'
  patch  '/accept_inv', to: 'users#accept_invitation'
  
  resources :users,  only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
  resources :invitations
  root 'events#index'
end
