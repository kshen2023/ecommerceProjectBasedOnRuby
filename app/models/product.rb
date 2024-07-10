class Product < ApplicationRecord

  def self.ransackable_associations(auth_object = nil)
    ["category"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "id_value", "img_src", "name", "price", "product_link", "product_link_href", "updated_at"]
  end
  belongs_to :category
end
