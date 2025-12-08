# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating 2 fake restaurants...'

restaurant1 = Restaurant.new(
  name:    "Saizeriya Nagoya Matsuoka Building Store",  
  address: "2-45-7 Meieki, Nakamura-ku Matsuoka Bldg. B1F, Nagoya 450-0002 Aichi Prefecture",
  category: "Italian",
  phone_number: "052-533-1414",
  accepts_reservations: false
)
restaurant1.save!

restaurant2 = Restaurant.new(
  name: "Outback Steakhouse Nagoya",
  address: "Nishiki324 Bldg. B1F, 3-24-24 Nishiki, Naka-ku, Nagoya City, Aichi",
  category: "Steakhouse",
  phone_number: " 050-5461-1141",
  accepts_reservations: true
)
restaurant2.save!

puts "Finished! Created #{Restaurant.count} restaurants."
