class Bucket < ApplicationRecord
  validates :name, presence: true
  
  has_many :items
end

