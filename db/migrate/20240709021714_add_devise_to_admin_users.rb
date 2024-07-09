class AddDeviseToAdminUsers < ActiveRecord::Migration[7.1]
  def self.up
    change_table :admin_users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: "" unless column_exists?(:admin_users, :email)
      t.string :encrypted_password, null: false, default: "" unless column_exists?(:admin_users, :encrypted_password)

      ## Other devise columns
      # Add other columns here if needed
    end

    add_index :admin_users, :email,                unique: true unless index_exists?(:admin_users, :email)
    add_index :admin_users, :reset_password_token, unique: true unless index_exists?(:admin_users, :reset_password_token)
    # add_index :admin_users, :confirmation_token,   unique: true
    # add_index :admin_users, :unlock_token,         unique: true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
