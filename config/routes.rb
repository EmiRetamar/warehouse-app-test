Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get 'test', to: 'test#index'

  post 'signin', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
