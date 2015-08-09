namespace :db do
  desc "Create 100 users with random names and descriptions"
  task user: :environment do
    User.create!(:name => "Rake Example User",
                 :email => "test@example.gov",
                 :note => "test",
                 :about => "test",
                 :password => "password",
                 :password_confirmation => "password")
    99.times do |n|
      name = Faker::Name.name
      name = "#{name}_#{n}"
      email = Faker::Internet.email
      password  = "password"
      note = Faker::Lorem.sentence(word_count = 20, supplemental = false, random_words_to_add = 10)
      about = Faker::Lorem.sentence(word_count = 20, supplemental = false, random_words_to_add = 10)
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password,
                   :note => note,
                   :about => about)
    end
  end
end
