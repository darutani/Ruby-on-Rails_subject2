class RemoveSeveralColumnsToRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :number_people, :integer
    remove_column :rooms, :start_date, :date
    remove_column :rooms, :end_date, :date
  end
end
