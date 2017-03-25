class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.integer :quantity, default: 1
      t.boolean :working, default: true
      t.timestamps
    end
  end
end
