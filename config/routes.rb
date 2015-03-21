Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/about', as: "about"
  get 'welcome/contact', as: "contact"

  devise_for :users, path: "/", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  resources :users

  root 'welcome#index'
end
