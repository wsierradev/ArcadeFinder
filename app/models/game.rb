class Game < ApplicationRecord
  has_many :arcadegames
  has_many :arcades, through: :arcadegames
  validates :name, presence: true
  validates :working, inclusion: { in: [ true, false ] }
end
