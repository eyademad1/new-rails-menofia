# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users = User.create!([
  { name: "Eyad", email: "eyad@gmail.com" },
  { name: "habsa", email: "habsa@gmail.com" }
])

posts = Post.create!([
  { title: "Post 1", body: "Content", user: users[0] },
  { title: "Post 2", body: "Content", user: users[1] }
])

PostEditor.create!([
  { user: users[1], post: posts[0] },
  { user: users[0], post: posts[1] }
])