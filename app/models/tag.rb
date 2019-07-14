class Tag < ApplicationRecord
  has_many :taggings
  has_many :portfolios, through: :taggings
  
  validates :name, presence: true
end
