class ApplicationController < ActionController::Base

  before_action :authenticate_user!,except: [:top, :search, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])   # 新規登録時にuser_nameの取得を許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])   # 情報更新時にuser_nameの取得を許可
  end

end
