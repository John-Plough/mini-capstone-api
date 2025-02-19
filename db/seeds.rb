# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

product = Product.new(name: "circus peanuts", price: 5, image_url: "https://crazyoutletcandy.com/cdn/shop/files/61YQ2ZvZ8eL._SL1126_1200x1200.jpg?v=1725981736", description: "one pound of circus peanuts")

product = Product.new(name: "garden gnome", price: 33, image_url: "https://www.bitsandpieces.com/cdn/shop/files/41351_1220x1220_crop_center.webp?v=1712756640", description: "gnome lounging in a bath")

product = Product.new(name: "umbrella", price: 12, image_url: "https://republiclifestyle.co.za/wp-content/uploads/2022/06/rain-umbrellas-all-colours-and-styles3.jpg", description: "red umbrella")
