#This is incomplete

users =[]
# new_user = User.create!(email:"a@a.com")

5.times do
  new_user = User.create!(email:"a@a.com")
  users <
end

users.each
  20.times do
    Car.create!(make: ["Renault", "BMW", "VW", "Mini Cooper", "Aston Martin", "Porsche", "Lamborghini"].sample,
                model: Faker::Lorem.sentence(2, false, 0).chop,
                year: (1990..2009).to_a.sample,
                price_per_day: (19..2000).to_a.sample,
                available: [true, false].sample,
                story: Faker::Lorem.paragraph,
                photo: Faker::Internet.url,
                user_id: new_user.id)
  end

end

# 20.times do

#   Car.create!(make: ["Renault", "BMW", "VW", "Mini Cooper", "Aston Martin", "Porsche", "Lamborghini"].sample,
#               model: Faker::Lorem.sentence(2, false, 0).chop,
#               year: (1990..2009).to_a.sample,
#               price_per_day: (19..2000).to_a.sample,
#               available: [true, false].sample,
#               story: Faker::Lorem.paragraph,
#               photo: Faker::Internet.url,
#               user_id: new_user.id)
# end

