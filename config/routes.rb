Rails.application.routes.draw do
  root 'main#index'
  get 'about', to: "about#index"
  get 'sign_up', to: "registration#new"
  post 'sign_up', to: "registration#create"
end
