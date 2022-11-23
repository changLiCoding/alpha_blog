# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "Evgeny", email: "evgeny@gmail.com", password: "password123", admin: true)
User.create(username: "Jonsnow", email: "jonsnow@gmail.com", password: "password123", admin: false)
User.create(username: "Arya", email: "arya@gmail.com", password: "password123", admin: false)
User.create(username: "Frodo", email: "frodo@gmail.com", password: "password123", admin: false)
User.create(username: "Gandalf", email: "gandalf@gmail.com", password: "password123", admin: false)
User.create(username: "littlefinger", email: "littlefinger@gmail.com", password: "password123", admin: false)
User.create(username: "Hodor", email: "hodor@gmail.com", password: "password123", admin: false)



Article.create(title: "Game of thrones fans", description: "She was Daenerys Stormborn, the Unburnt, khaleesi and queen, Mother of Dragons, slayer of warlocks, breaker of chains, and there was no one in the world that she could trust.", user_id: 2)
Article.create(title: "Game of thrones fans", description: "You're no maester. Where's your chain?", user_id: 3)
Article.create(title: "Game of thrones fans", description: "Did you send the ravens?", user_id: 4)
Article.create(title: "Game of thrones fans", description: "They're called the Second Sons, a company led by a Braavosi named Mero, the Titan's Bastard.", user_id: 5)
Article.create(title: "Game of thrones fans", description: "By the faith of the Seven, I hereby seal these two souls, binding them as one for eternity.", user_id: 6)
Article.create(title: "Game of thrones fans", description: "He's a warg. He can enter the minds of animals and see through their eyes.", user_id: 7)


Category.create(name: "Life style")
Category.create(name: "Programming")
Category.create(name: "Sports")
Category.create(name: "Video game")
Category.create(name: "Foot Ball")
Category.create(name: "Weather")
Category.create(name: "Healthcare")
Category.create(name: "Hunting")
Category.create(name: "Fishing")
Category.create(name: "Cars")
