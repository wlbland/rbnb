#This is incomplete

users =[]
# new_user = User.create!(email:"a@a.com")


new_user = User.create!(email:"a@a.com", password:"123123")
new_user = User.create!(email:"b@a.com", password:"123123")
new_user = User.create!(email:"c@a.com", password:"123123")
new_user = User.create!(email:"d@a.com", password:"123123")

user_ids = (1..4).to_a
  9.times do
    Car.create!(make: ["Renault", "BMW", "VW", "Mini Cooper", "Aston Martin", "Porsche", "Lamborghini"].sample,
                model: Faker::Lorem.sentence(2, false, 0).chop,
                year: (1990..2009).to_a.sample,
                price_per_day: (19..2000).to_a.sample,
                available: [true, false].sample,
                story: Faker::Lorem.paragraph,
                photo: ("https://source.unsplash.com/featured/?car"),
                user_id: user_ids.sample(1)[0])
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

puts "seed done!"
