Rails.application.routes.draw do

  root to: "pages#home"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
  get "signup_page" => "pages#signup_page", as: :signup_page

  devise_for :users, path: 'users', controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
    }

    devise_for :counsellors, path: 'counsellors', controllers: {
      registrations: "counsellors/registrations",
      sessions: "counsellors/sessions",
      }

      devise_for :supervisors, path: 'supervisors', controllers: {
        registrations: "supervisors/registrations",
        sessions: "supervisors/sessions",
 }

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

  resources :client_chatrooms, only: :show do
    resources :messages, only: :create
  end
  resources :appointments, only: [:new, :create, :edit, :update, :destroy, :show]

  resources :counsellor_chatrooms, only: :show do
    resources :messages, only: :create
  end

end
