class CreateUserarcades < ActiveRecord::Migration[5.0]
  def change
    create_table :userarcades do |t|

      t.timestamps
    end
  end
end
