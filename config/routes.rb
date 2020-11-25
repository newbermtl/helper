Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :proposals do
      resources :messages, only: [:create, :index]
    end
  end

  resources :users, only: [:new, :create, :show, :index]

  resources :helpers, only: :new

end
