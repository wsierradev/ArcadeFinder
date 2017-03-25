class Game < ApplicationRecord
  has_many :arcadegames
  has_many :arcades, through: :arcadegames
  validates :name, presence: true
  validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :working, inclusion: { in: [ true, false ] }
end
