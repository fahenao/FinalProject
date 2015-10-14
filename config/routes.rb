Rails.application.routes.draw do
  devise_scope :user do
    
    authenticated :user do
      root 'users#profile', as: :aunthenticated_root
    end
    unauthenticated do
      root 'devise/registrations#new', as: :unaunthenticated_root
    end
  end

  namespace :api do
    get 'appointments/:date', to: 'appointments#show'
  end
  
  devise_for :users 
  resources :appointments
  resources :users
  resources :patients
  resources :services
end