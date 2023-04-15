class CreateRoomsUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms_users do |t|
      t.belongs_to :room
      t.belongs_to :user
      t.index [:room_id, :user_id], unique: true
      t.timestamps
    end
  end
end
