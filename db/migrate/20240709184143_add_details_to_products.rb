class AddDetailsToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :product_link, :string
    add_column :products, :product_link_href, :string
    add_column :products, :img_src, :string
  end
end
