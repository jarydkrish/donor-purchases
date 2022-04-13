class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, default: 0.00, null: false

      t.timestamps
    end
  end
end
