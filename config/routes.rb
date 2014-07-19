Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'
  get '/logout' => 'sessions#destroy', as: :logout
  resources :assignments, only: %i(index show) do
    resources :stamps, only: %i(create destroy)
  end
end
