EnbakeScore::Application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions", registrations: "users/registrations", passwords: "users/passwords"}
  root 'dashboard#index'

  resources :dashboard, only: [:index]
end
