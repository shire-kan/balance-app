Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, only: [:edit, :update]

  resources :payments, only: [:new, :create]
  root to: "payments#index"
end
