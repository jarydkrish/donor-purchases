class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :care_packages, through: :order_items
end
