Rails.application.routes.draw do

  resources :appointments
  devise_for :users

  resources :user

  devise_scope :user do

    authenticated :user do
      root 'users#new', as: :aunthenticated_root
    end

    unauthenticated do
      root 'devise/registrations#new', as: :unaunthenticated_root
    end



  end


end