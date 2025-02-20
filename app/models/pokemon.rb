class Pokemon < ApplicationRecord
  has_one_attached :photo
  has_many :pokeballs
  has_many :trainer, through: :pokeball
  validates :name, presence: true
  validates :element_type, presence: true
end
