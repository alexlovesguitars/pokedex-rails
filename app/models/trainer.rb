class Trainer < ApplicationRecord
  has_one_attached :photo
  has_many :pokeballs
  has_many :pokemon
  validates :name, presence: true
  validates :age, presence: true, data_type: integer
end
