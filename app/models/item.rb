class Item < ApplicationRecord
  validates :code, :weight, presence: true
  
  belongs_to :sub_category
  belongs_to :gold_type
end

