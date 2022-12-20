class ApplicationController < ActionController::Base

  # before_action :configure_permitted_parameters, if: :devise_controller?


  private
  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :icon_image])   # 新規登録時にuser_nameの取得を許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])   # 情報更新時にuser_nameの取得を許可
  end

  # def after_sign_up_path_for(resource)     #ユーザー新規登録後の遷移左記ページの指定
  #   user_profile_path(current_user.id)
  # end


end
