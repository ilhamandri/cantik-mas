class Store < ApplicationRecord
  validates :name, :address, :phone, presence: true
  has_many :users
  enum store_type:{
    retail: 0,
    warehouse: 1
  }
end

