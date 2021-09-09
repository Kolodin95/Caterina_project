class Item < ApplicationRecord
  has_many :orders
  has_one_attached :photo
  validates :title, :description, :price, presence: true
end
