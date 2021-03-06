Rails.application.routes.draw do
  get 'welcome/index'
  
   root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope "(:locale)", locale: /en|nl/ do 
    resources :welcome 
  end 
 
  get '/:locale' => 'welcome#index' 
  
end
