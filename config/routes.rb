Rails.application.routes.draw do
  # devise_for :supervisors
  # devise_for :counsellors
  # devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
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


end
