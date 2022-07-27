Rails.application.routes.draw do
  resources :user
  post "auth/login", to: "authenrication#login"
end
