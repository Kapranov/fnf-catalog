# For FnF old version.
#
# Users
# User.create!(name:  "Example User",
#              email: "example@railstutorial.org",
#              password:              "foobar",
#              password_confirmation: "foobar",
#              admin:     true,
#              activated: true,
#              activated_at: Time.zone.now)
#
# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name: name,
#               email: email,
#               password:              password,
#               password_confirmation: password,
#               activated: true,
#               activated_at: Time.zone.now)
# end

# Microposts
# users = User.order(:created_at).take(6)
# 50.times do
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.microposts.create!(content: content) }
# end

# Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
#
#
#
# User.create({:email => "lugatex@yahoo.com", :name => "Oleg G.Kapranov", :password => "12345678", :password_confirmation => "12345678", :confirmed_at => Time.now })
# User.create({:email => "zhuk_andriy@hotmail.com", :name => "Andrey Zhuk", :password => "qwerty", :password_confirmation => "qwerty", :confirmed_at => Time.now })
# User.create({:email => "test@example.com", :name => "Test", :password => "qwerty", :password_confirmation => "qwerty", :confirmed_at => Time.now })
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email
# User.update_all(:confirmed_at => Time.now)

# Product.delete_all
# Product.create! id: 1, name: "Banana", price: 0.49, active: true
# Product.create! id: 2, name: "Apple", price: 0.29, active: true
# Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true

# OrderStatus.delete_all
# OrderStatus.create! id: 1, name: "In Progress"
# OrderStatus.create! id: 2, name: "Placed"
# OrderStatus.create! id: 3, name: "Shipped"
# OrderStatus.create! id: 4, name: "Cancelled"

# For new FnF version.
# User.create(email: "lugatex@yahoo.com", name: "Oleg G.Kapranov", password: "12345678", password_confirmation: "12345678" )
# User.create(email: "zhuk_andriy@hotmail.com", name: "Andrey Zhuk", password: "qwerty", password_confirmation: "qwerty" )
# User.create(email: "test@example.com", name: "Test", password: "qwerty", password_confirmation: "qwerty" )

# Create Order status
OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
