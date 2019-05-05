Rails.application.routes.draw do
  #get 'main_welcome/index'
  root 'main_welcome#index'

  namespace :api, constraints: {format: 'json'} do
    namespace :v1 do
      resources :main_welcome, :defaults => {:format => :json}
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
