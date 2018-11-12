Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # RESTful + searchを追加
  resources :customers do
        collection do
          get "search"
          get "csv_output"
        end
  end
    
  #get 'customers/customercsv', to: 'customers#customercsv'
  
end
