class Arcade < ApplicationRecord
  has_many :userarcades
  has_many :arcadegames
  has_many :users, through: :userarcades
  has_many :games, through: :arcadegames

end
