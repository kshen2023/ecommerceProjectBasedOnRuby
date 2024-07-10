class Category < ApplicationRecord
  def self.ransackable_associations(auth_object = nil)
    ["products"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "name", "sub_category", "sub_category_href", "updated_at"]
  end

  has_many :products, dependent: :destroy
end
