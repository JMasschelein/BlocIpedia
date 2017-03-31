require 'faker'

## Create Users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.save
end

## Create admin user for testing
admin = User.new(
  name: 'Admin Example',
  email: 'admin@gmail.com',
  password: 'helloworld',
  admin_role: true
)

admin.save

## Create premium user for testing
premium = User.new(
  name: 'Premium Example',
  email: 'premium@gmail.com',
  password: 'helloworld',
  premium_role: true
)

premium.save

## Create standard user for testing
standard = User.new(
  name: 'Standard Example',
  email: 'standard@gmail.com',
  password: 'helloworld',
  standard_role: true
)

premium.save

users = User.all


## Create wikis
20.times do 
  wiki = Wiki.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end

wikis = Wiki.all
puts "#{wikis.count} wikis created."
puts "#{User.count} users created."