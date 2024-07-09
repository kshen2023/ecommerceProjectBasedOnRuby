class CreateOrderItemTaxes < ActiveRecord::Migration[7.1]
  def change
    create_table :order_item_taxes do |t|
      t.integer :order_item_id
      t.integer :tax_type_id
      t.decimal :tax_amount


      t.timestamps
    end
  end
end
