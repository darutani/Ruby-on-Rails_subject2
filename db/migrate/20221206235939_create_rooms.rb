class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :room_image
      t.string :name
      t.string :address
      t.text :introduction
      t.integer :price
      t.integer :number_people
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
