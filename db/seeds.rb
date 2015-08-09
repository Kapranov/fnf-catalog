# For FnF old version.
#
# Rails 4 Devise Seed Users with random passwords
# class CreateUsers < ActiveRecord::Migration
#   def self.up
#     # create USERS table
#       create_table "users", id: false, force: true do |t|
#         t.integer "id",       limit: 8,  default: 0,  null: false
#         t.string  "username", limit: 30, default: "", null: false
#         t.string  "password", limit: 30, default: "", null: false
#       end
#       execute "ALTER TABLE users ADD PRIMARY KEY (id);"
#       add_index "users", ["username", "id"], name: "BY_USERNAME", using: :btree
#   end
#
#   def self.down
#     drop_table :users
#   end
# end
#
# users = [] # Empty array to store users
# 100.times do
#     username = "#{Faker::Vehicle.make}#{Faker::BaconIpsum.word}-#{rand(999)}"
#     user_password = SecureRandom.base64(12)
#     u = User.new
#         u.id = SecureRandom.random_number(9999999999)
#         u.username = username.gsub(/\s+/,"")
#         u.password = user_password
#         u.password_confirmation = user_password
#         u.email = "#{Faker::Internet.free_email}"
#         u.sign_in_count = 0
#    u.save
#    users << u # Put newly created user in the array
# end
#
# create_table "users", force: true do |t|
#     t.string   "username",               limit: 30,              null: false
#     t.string   "password",               limit: 30,              null: false
#     t.string   "email",                             default: "", null: false
#     t.string   "encrypted_password",                default: "", null: false
#     t.string   "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer  "sign_in_count",                     default: 0,  null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.string   "current_sign_in_ip"
#     t.string   "last_sign_in_ip"
#  end
#
# add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
# add_index "users", ["username", "id"], name: "BY_USERNAME", using: :btree
#
# class CreateUsers < ActiveRecord::Migration
#   def self.up
#     # create USERS table
#       create_table "users", id: false, force: true do |t|
#         t.integer "id",       limit: 8,  default: 0,  null: false
#         t.string  "username", limit: 30, default: "", null: false
#         t.string  "password", limit: 30, default: "", null: false
#       end
#       execute "ALTER TABLE users ADD PRIMARY KEY (id);"
#       add_index "users", ["username", "id"], name: "BY_USERNAME", using: :btree
#   end
#
#   def self.down
#     drop_table :users
#   end
# end
#
#
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
# OrderStatus.delete_all
# OrderStatus.create! id: 1, name: "In Progress"
# OrderStatus.create! id: 2, name: "Placed"
# OrderStatus.create! id: 3, name: "Shipped"
# OrderStatus.create! id: 4, name: "Cancelled"
#
