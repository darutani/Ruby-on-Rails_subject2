class UsersController < ApplicationController
  
  def account
    @user = User.find(current_user.id)
  end

  def profile
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(update_params)
      redirect_to user_profile_path(current_user.id)
    else
      render "users/profile"
    end
  end

  private

  def update_params
    params.require(:user).permit(:user_name, :icon_image, :introduction)
  end

end
