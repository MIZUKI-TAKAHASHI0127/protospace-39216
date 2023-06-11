Rails.application.routes.draw do
devise_for :users
  root to: "prototypes#index"
  resources :users, only: :show
  resources :prototypes do
    resources :comments, only: [:create]
  end

  devise_scope :user do
    get '/users', to: redirect("/users/sign_up")
    get '/users/sign_out' => 'devise/sessions#destroy'
    get "users/:id" => "users#show"
  end                 
end