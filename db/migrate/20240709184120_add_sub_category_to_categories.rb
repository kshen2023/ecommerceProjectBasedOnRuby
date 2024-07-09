class AddSubCategoryToCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :sub_category, :string
    add_column :categories, :sub_category_href, :string
  end
end
