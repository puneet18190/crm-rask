EnbakeScore::Application.routes.draw do
  root 'dashboard#index'

  resources :dashboard, only: [:index]
end
