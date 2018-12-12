Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  get 'users/sing_up', to:"users#new"

  post 'users', to: "users#create"
  get 'users/sing_in', to:"sessions#new"
  #root to: 'posts#index'
  resources :sessions, only: [:new, :create, :destroy]

end
