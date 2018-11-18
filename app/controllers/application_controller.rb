class ApplicationController < ActionController::Base
  # ログイン状態を判定
  #before_action :authenticated_user!
  #before_action :authenticate_user!
    
  protect_from_forgery with: :exception
end
