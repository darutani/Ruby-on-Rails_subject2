class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.integer :user_id
      t.integer :room_id
      t.integer :number_people
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
