Rails.application.routes.draw do
  get 'welcome/index'
  
  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#create', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope "(:locale)", locale: /es|nl/ do 
    resources :welcome 
    resources :menus
    resources :users
    resources :sessions
  end 
 
  get '/:locale' => 'welcome#index' 

  # get '/:locale/signup', to: 'users#new', as: 'signup'
  # get '/:locale/login', to: 'sessions#new', as: 'login'
  # get '/:locale/logout', to: 'sessions#destroy', as: 'logout'
  
  
end
