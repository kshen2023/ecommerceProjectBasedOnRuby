class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :product_name
      t.decimal :product_price
      t.integer :quantity
      t.decimal :tax_amount
      t.decimal :total_price


      t.timestamps
    end
  end
end
