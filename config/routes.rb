Rails.application.routes.draw do
  resources :replies
  resources :forums
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :index, :show]
  resources :forumreplies
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
