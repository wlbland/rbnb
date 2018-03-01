
Car.destroy_all
User.destroy_all


20.times do
  Car.create!(make: ["Renault", "BMW", "VW", "Mini Cooper", "Aston Martin", "Porsche", "Lamborghini"].sample,
    model: Faker::Lorem.sentence(2, false, 0).chop,
    year: (1990..2009).to_a.sample,
    price_per_day: (19..2000).to_a.sample,
    available: [true, false].sample,
    story: Faker::Lorem.paragraph,
    user_id: (1..10).to_a.sample
  )
end

p "Created #{Car.count} cars"


5.times do
  user = User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: "password"
  )
end
