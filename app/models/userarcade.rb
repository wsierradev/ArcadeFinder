class Userarcade < ApplicationRecord
  belongs_to :user
  belongs_to :arcade
end
