class AddUserNameIntroductionIconImageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :introduction, :text
    add_column :users, :icon_image, :string
  end
end
