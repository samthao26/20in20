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
require 'open-uri'
User.create!(email: "sam5@example.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

10.times do |i|
  post = Post.new
  post.title = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 10)
  post.body = Faker::Lorem.paragraph_by_chars(number: 1500)
  post.user = User.first
  post.thumbnail.attach(io: URI.open("https://picsum.photos/1920/1080"), filename: "#{i}_thumbnail.jpg")
  post.banner.attach(io: URI.open("https://picsum.photos/1920/1080"), filename: "#{i}_banner.jpg")
  post.views = Faker::Number.between(from: 1, to: 500)
  post.save
end
