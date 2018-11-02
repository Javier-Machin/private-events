Rails.application.routes.draw do
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  get    '/signup',     to: 'users#new'
  post   '/signup',     to: 'users#create'
  get    '/dashboard',  to: 'users#dashboard'
  get    '/attended',   to: 'users#attended_events'
  get    '/upcoming',   to: 'users#upcoming_events'
  delete '/logout',     to: 'sessions#destroy'
  get    '/pending',    to: 'users#pending_invitations'
  patch  '/accept_inv', to: 'users#accept_invitation'
  
  resources :users,  only: [:new, :create]
  resources :events, only: [:new, :create, :index]
  resources :invitations
  root 'users#home'
end
