Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'users#profile', as: :aunthenticated_root
    end
    unauthenticated do
      root 'devise/registrations#new', as: :unaunthenticated_root
    end
  end

  resources :appointments, only: [:create, :edit, :update]
  delete '/appointments/destroy/:id' => 'appointments#destroy', as: 'appointment_destroy'
  resources :users
  resources :patients, only: [:create, :show, :edit, :update]

end