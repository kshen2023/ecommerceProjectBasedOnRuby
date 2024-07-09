class CreateTaxTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :tax_types do |t|
      t.string :name

      t.timestamps
    end
    add_index :tax_types, :name
  end
end
