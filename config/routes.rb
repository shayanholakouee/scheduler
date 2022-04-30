Rails.application.routes.draw do

  #root
  root 'main#index'
  #about
  get 'about', to: "about#index"
  #registtratio
  get 'sign_up', to: "registration#new"
  post 'sign_up', to: "registration#create"
  #sessions
  delete 'logout', to: "sessions#destroy"
  get 'sign_in', to:'sessions#new'
  post 'sign_in', to: 'sessions#create'

end
