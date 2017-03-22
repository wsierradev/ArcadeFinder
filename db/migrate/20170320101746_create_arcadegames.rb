class CreateArcadegames < ActiveRecord::Migration[5.0]
  def change
    create_table :arcadegames do |t|
      t.integer :arcade_id
      t.integer :game_id
      t.timestamps
    end
  end
end
