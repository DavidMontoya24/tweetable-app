# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start seeding"

Comment.destroy_all
Tweet.destroy_all
User.destroy_all

puts "Seeding users"

user1 = User.create(name: "MrCheems", username: "cheemy24", email: "test1@example.com", password: "123456")
user2 = User.create(name: "Son Goku", username: "goku2000", email: "test2@example.com", password: "123456")
user3 = User.create(name: "House on Fire", username: "firedog", email: "test3@example.com", password: "123456")
user4 = User.create(name: "Struggler", username: "lifeispain", email: "test4@example.com", password: "123456")
user5 = User.create(name: "TanusMan", username: "avengersKiller", email: "test5@example.com", password: "123456")

user1.avatar.attach(io: File.open("app/assets/images/avatar-00.png"), filename: "avatar")
user2.avatar.attach(io: File.open("app/assets/images/avatar-02.png"), filename: "avatar")
user3.avatar.attach(io: File.open("app/assets/images/avatar-05.png"), filename: "avatar")
user4.avatar.attach(io: File.open("app/assets/images/avatar-03.png"), filename: "avatar")
user5.avatar.attach(io: File.open("app/assets/images/avatar-04.png"), filename: "avatar")

puts "Seeding tweets"

tweet1 = user1.tweets.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum.\n Nullam mattis fermentum libero, non volutpat.")
tweet2 = user2.tweets.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum sodales.\n Nullam mattis fermentum libero, non volutpat.")
tweet3 = user3.tweets.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")
tweet4 = user4.tweets.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n interdum rutrum sodales. Nullam mattis fermentum , non volutpat.")
tweet5 = user5.tweets.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales.\n Nullam mattis fermentum libero, non volutpat.")

puts "Seeding comments"

tweet1.comments.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.", user: user3)
tweet1.comments.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.", user: user4)
tweet1.comments.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.", user: user5)
tweet2.comments.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.", user: user1)
tweet3.comments.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.", user: user2)