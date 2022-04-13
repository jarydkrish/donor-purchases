class Product < ApplicationRecord
  has_many :care_package_products
  has_many :care_packages, through: :care_package_products

  has_many_attached :images

  after_save :update_care_package_prices

  def update_care_package_prices
    care_packages.each(&:update_price)
  end
end
