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

  resources :appointments
  # delete '/appointments/destroy/:id' => 'appointments#destroy', as: 'appointment_destroy'

  resources :users

  resources :patients
  #delete '/patients/destroy/:id' => 'patients#destroy', as: 'patient_destroy'
  resources :services
end