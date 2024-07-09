# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# AdminUser.create!(email: 'kshen@rrc.ca', password: '111', password_confirmation: '111') if Rails.env.development?
require 'csv'

CSV.foreach(Rails.root.join('db/seeds/NIKE.csv'), headers: true) do |row|
  category = Category.find_or_create_by!(
    name: row['category'],
    sub_category: row['sub-category'],
    sub_category_href: row['sub-category-href']
  )

  Product.create!(
    name: row['name'],
    description: row['description'],
    price: row['price'],
    product_link: row['product-link'],
    product_link_href: row['product-link-href'],
    img_src: row['img-src'],
    category: category
  )
end
