class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player_x_id
      t.integer :player_o_id
      t.integer :score

      t.timestamps
    end
  end
end
