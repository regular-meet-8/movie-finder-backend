puts "🌱 Seeding data..."

20.times do
    Movie.create(
      title: Faker::Movie.title,
      year: rand(2010..2020),
    )
end

10.times do
  Collection.create(
    user_id: rand(1..10),
    movie_id: rand(1..10)
  )
end

User.create(name: "Peter", email: "peter@example.com", password:"peter90")
User.create(name: "John", email: "john@example.com", password: "john123")
User.create(name: "Jane", email: "jane@example.com", password: "jane123")
User.create(name: "James", email: "james@example.com", password: "james123")
User.create(name: "Martin", email: "marc@example.com", password: "marc123")
User.create(name: "Tony", email: "tony@example.com", password: "tony123")
User.create(name: "Dennis", email: "dennis@example.com", password: "dennis123")
User.create(name: "Liam", email: "liam@example.com", password: "liam123")
User.create(name: "Mary", email: "mary@example.com", password: "mary123")
User.create(name: "Lucy", email: "lucy@example.com", password: "lucy123")

puts " 🌱 Done seeding!"