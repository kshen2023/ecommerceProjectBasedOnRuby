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

# Seed categories
CSV.foreach(Rails.root.join('db/seeds/category.csv'), headers: true) do |row|
  Category.create!(
    name: row['name'],
    description: row['description']
  )
end

# Seed products
CSV.foreach(Rails.root.join('db/seeds/product.csv'), headers: true) do |row|
  category = Category.find_by(name: row['category'])
  Product.create!(
    name: row['name'],
    description: row['description'],
    price: row['price'],
    category: category
  )
end
