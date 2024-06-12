Rails.application.routes.draw do
  devise_for :supervisors
  devise_for :counsellors
  devise_for :users

  root to: "pages#home"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :counsellors, only: :show do
    member do
      get 'profile'
    end
  end

  resources :users, only: [] do
    member do
      get 'profile', to: 'users#profile', as: :profile
    end
  end

  resources :appointments, only: [:new, :create, :edit, :update, :destroy, :show]
end
