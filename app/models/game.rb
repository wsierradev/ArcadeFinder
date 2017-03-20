class Game < ApplicationRecord
  has_many :arcadegames
  has_many :arcades, through: :arcadegames

end
