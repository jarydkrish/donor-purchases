class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :care_package
end
