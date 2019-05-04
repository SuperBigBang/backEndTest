Rails.application.routes.draw do
  get 'main_welcome/index'
  root 'main_welcome#index'

  resources :main_welcome
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
