class CreateRooms < ActiveRecord::Migration[7.0]
  def up
    create_table :rooms do |t|
      t.string :name, index: { unique: true }
      t.references :user, null: false, foreign_key: true, comment: 'Created By'

      t.timestamps
    end
  end

  def down
    drop_table :rooms
  end
end
