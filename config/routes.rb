Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # RESTful + searchを追加
  resources :customers do
        collection{ get "search" }
    end
  
end
