Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'
  get '/logout' => 'sessions#destroy', as: :logout
  resources :users, only: %i(index show) do
    resources :assignments, only: %i(show), controller: :user_assignments
  end
  resources :assignments, only: %i(index show) do
    resources :tutorials, only: :show
    resources :stamps, only: %i(create destroy)
  end
end
