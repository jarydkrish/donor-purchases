class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.integer :payment_status, default: 0, null: false
      t.decimal :total, default: 0.00, null: false

      t.timestamps
    end
  end
end
