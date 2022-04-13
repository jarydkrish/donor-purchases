class CarePackageProduct < ApplicationRecord
  belongs_to :care_package
  belongs_to :product

  after_save :update_care_package_prices

  def update_care_package_prices
    care_package.update_price
  end
end
