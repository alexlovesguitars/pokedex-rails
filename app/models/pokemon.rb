class Pokemon < ApplicationRecord
  has_one_attached :photo
  belongs_to :trainer
  validates :name, presence: true
  validates :element_type, presence: true
end
