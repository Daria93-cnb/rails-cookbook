# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Bookmark.destroy_all
Category.destroy_all
Recipe.destroy_all

puts "Creating recipes..."
Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream...",
  image_url: "https://images.unsplash.com/photo-1546549032-9571cd6b27df?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  rating: 4.5
)

Recipe.create!(
  name: "Avocado Toast",
  description: "A quick and easy breakfast or brunch made with ripe avocados and crispy toast.",
  image_url: "https://images.unsplash.com/photo-1603046891726-36bfd957e0bf?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  rating: 4.0
)

Recipe.create!(
  name: "Chicken Caesar Salad",
  description: "Classic Caesar salad with grilled chicken, crunchy croutons, and creamy dressing.",
  image_url: "https://plus.unsplash.com/premium_photo-1700089483464-4f76cc3d360b?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  rating: 4.0
)

Recipe.create!(
  name: "Blueberry Pancakes",
  description: "Fluffy pancakes loaded with fresh blueberries and a hint of vanilla.",
  image_url: "https://images.unsplash.com/photo-1620991565081-82743a5a499c?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  rating: 4.5
)

puts "Created #{Recipe.count} recipes"
