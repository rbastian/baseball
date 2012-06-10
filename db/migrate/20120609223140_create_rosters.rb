class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :player_id, null: false
      t.integer :jersey_number, null: false

      t.timestamps
    end
  end
end
