class CreateCarePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :care_packages do |t|
      t.decimal :price, default: 0.00, null: false

      t.timestamps
    end
  end
end
