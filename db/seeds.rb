
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: "password"
  )
end

# 20.times do
#   Car.create!(
#     make: ["Renault", "BMW", "VW", "Mini Cooper", "Aston Martin", "Porsche", "Lamborghini"].sample,
#     model: Faker::Lorem.sentence(2, false, 0).chop,
#     year: (1990..2009).to_a.sample,
#     price_per_day: (19..2000).to_a.sample,
#     available: [true, false].sample,
#     story: Faker::Lorem.paragraph,
#     user: 1
#   )
# end



