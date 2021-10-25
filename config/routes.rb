Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get 'ping', to: 'ping#index'

  resources :categories
  resources :products

  post 'signin', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
