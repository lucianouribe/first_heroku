user = User.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email,
                  password: 'password',
                  age: Faker::Number.between(1, 100))

Cat.populate(100) do |c|
  c.name = Faker::Pokemon.name
  c.age = Faker::Number.between(1, 20)
  c.gender = ['male', 'female'].sample
  c.fur_color = Faker::Color.color_name
  c.user_id = user.id
end

puts "User withEmail: #{user.email} create with 100 cats!"
