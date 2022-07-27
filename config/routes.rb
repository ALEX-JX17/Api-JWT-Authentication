Rails.application.routes.draw do
  resources :user
  post "auth/login", to: "authentication#login"
end
