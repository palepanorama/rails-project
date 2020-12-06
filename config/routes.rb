Rails.application.routes.draw do
  get 'players/selected', to: 'players#selected'
  resources :players 
  resources :positions do 
    resources :players 
  end 

  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  root to: 'application#welcome'

  devise_scope :user do 
    get 'login', to: 'devise/sessions#new', as: 'login'
    get 'signup', to: 'devise/registrations#new', as: 'signup'
  end 
end
