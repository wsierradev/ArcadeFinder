class CreateArcadegames < ActiveRecord::Migration[5.0]
  def change
    create_table :arcadegames do |t|

      t.timestamps
    end
  end
end
