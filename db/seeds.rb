# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Owen", email: "owen@owen.com", password: "owen")
User.create(username: "Rhanda", email: "rhanda@rhanda.com", password: "rhanda")
User.create(username: "Jim", email: "jim@jim.com", password: "jim")
User.create(username: "Bob", email: "bob@bob.com", password: "bob")
User.create(username: "Tim", email: "tim@tim.com", password: "tim")


Player.create(name: 'Bo Nix', user_id: 2, position_id: 1, has_team: 1)
Player.create(name: 'Cam Newton', user_id: 4, position_id: 1, has_team: 1)
Player.create(name: 'Tank Bigsby', user_id: 2, position_id: 2, has_team: 1)
Player.create(name: 'Eli Stove', user_id: 3, position_id: 3, has_team: 1)
Player.create(name: 'KJ Britt', user_id: 5, position_id: 6, has_team: 1)

Position.create(name: 'Quarterback')
Position.create(name: 'Runningback')
Position.create(name: 'Wide Receiver')
Position.create(name: 'Tight End')
Position.create(name: 'Offensive Line')
Position.create(name: 'Linebacker')
Position.create(name: 'Defensive Line')
Position.create(name: 'Defensive Back')
Position.create(name: 'Special Teams')