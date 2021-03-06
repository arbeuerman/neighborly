# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
Task.reset_pk_sequence

User.destroy_all
User.reset_pk_sequence

10.times do 
    User.create(username: Faker::Movies::StarWars.unique.character, 
    password: "1234abcd", 
    address: Faker::Address.street_address,
    avatar: Faker::Avatar.image)
end

10.times do 
    Task.create(name: Faker::Job.key_skill, 
    description: Faker::Job.field, 
    duration: ['1 hour', '4 hours', '10 minutes', '15 minutes'].sample,
    category: Faker::Job.field,
    has_volunteer: false,
    user_id: User.all.sample.id)
end
