class CarePackage < ApplicationRecord
  has_many :care_package_products, dependent: :destroy
  has_many :products, through: :care_package_products

  has_many :order_items, dependent: :nullify
  has_many :orders, through: :order_items

  def update_price
    price = 0
    care_package_products.each do |care_package_product|
      price += care_package_product.product.price * care_package_product.quantity
    end
    update(price:)
  end
end
