class Arcade < ApplicationRecord
  has_many :userarcades
  has_many :arcadegames
  has_many :users, through: :userarcades
  has_many :games, through: :arcadegames
  validates :name, presence: true
  validates :street1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, length: {is: 5}
end
