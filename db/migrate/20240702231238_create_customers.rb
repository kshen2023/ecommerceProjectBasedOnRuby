class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :address
      t.references :province, null: false, foreign_key: true


      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
