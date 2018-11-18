Rails.application.routes.draw do
  devise_for :users
  #get 'top/index'
  # topページ追加
  root to: 'top#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # RESTful + search + csvを追加
  resources :customers do
        collection do
          get "search"
          get "csv_output"
        end
  end
end
