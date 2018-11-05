Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # search
  #get 'customers/search', to: 'customers#search'

  # RESTful  
  resources :customers
  
end
