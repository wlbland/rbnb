# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all

20.times do

  Car.create!(make: ["Renault", "BMW", "VW", "Mini Cooper", "Aston Martin", "Porsche", "Lamborghini"].sample,
              model: Faker::Lorem.sentence(2, false, 0).chop,
              year: (1990..2009).to_a.sample,
              price_per_day: (19..2000).to_a.sample,
              available: [true, false].sample,
              story: Faker::Lorem.paragraph,
              photos: Faker::Internet.url,
              user_id: (1..2).to_a.sample)
end

p "Created #{Car.count} cars"




# 5.times do
#   user = User.new(
#     username: Faker::Internet.user_name,
#     email: Faker::Internet.email
#   )
#   user.save

#   (5..10).to_a.sample.times do
#     post = Post.new(
#       name: Faker::Commerce.product_name,
#       url: Faker::Internet.url,
#       votes: (0..1000).to_a.sample,
#       user: user
#     )
#     post.save
#   end
# end


# t.bigint "user_id"
#     t.string "make"
#     t.string "model"
#     t.integer "year"
#     t.integer "price_per_day"
#     t.boolean "available", default: true
#     t.text "story"
#     t.string "photos"
