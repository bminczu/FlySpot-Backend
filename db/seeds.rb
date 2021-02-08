# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Review.destroy_all
Post.destroy_all

user1 = User.create(username: "bart", password: "123")
user2 = User.create(username: "Mike", password: "456")
user3 = User.create(username: "John", password: "678")
user4 = User.create(username: "Dan", password: "8910")

post1 = Post.create(title:"Abandoned warehouse", user_id:user1.id, address:"4411 newcastle IL", latitude:900, longitude:600, category:"City", airspace:"A", description:"sick spot to fly", authors_rating:5, video:"https://www.youtube.com/watch?v=8tByp0pYhBs&t=143s")
post2 = Post.create(title:"City Flight", user_id:user2.id, address:"5555 new england IL", latitude:500, longitude:500, category:"Nature", airspace:"D", description:"Dope views", authors_rating:4, video:"https://www.youtube.com/watch?v=3J3qZsSAuY8")
post3 = Post.create(title:"Forrest Flight", user_id:user3.id, address:"6666 harlem IL", latitude:100, longitude:100, category:"Nature", airspace:"D", description:"Decent little spot", authors_rating:3, video:"https://www.youtube.com/watch?v=3J3qZsSAuY8")
post4 = Post.create(title:"Over Water", user_id:user3.id, address:"7777 montrose IL", latitude:300, longitude:500, category:"Nature", airspace:"D", description:"Not much to look at", authors_rating:1, video:"https://www.youtube.com/watch?v=3J3qZsSAuY8")


review1 = Review.create(user_id:user2.id, post_id:post1.id, user_rating:4, comment:"definitely a cool spot")
review2 = Review.create(user_id:user1.id, post_id:post2.id, user_rating:2, comment:"kinda lame")
review3 = Review.create(user_id:user1.id, post_id: post3.id, user_rating:3, comment:"it was okay")