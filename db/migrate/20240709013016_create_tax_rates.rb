class CreateTaxRates < ActiveRecord::Migration[7.1]
  def change
    create_table :tax_rates do |t|
      t.integer :province_id
      t.integer :tax_type_id
      t.decimal :rate
      t.date :effective_date

      t.timestamps
    end
  end
end
