class CreateUserarcades < ActiveRecord::Migration[5.0]
  belongs_to :users
  belongs_to :arcades
  def change
    create_table :userarcades do |t|

      t.timestamps
    end
  end
end
