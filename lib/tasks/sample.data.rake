require 'faker'

namespace :db do
  desc "fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Mahalia A", 
                          :email => "Mahalia@example.com", 
                          :password => "barbaz", 
                          :password_confirmation => "barbaz", 
                          :admin => true)
    admin.toggle!(:admin)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password = "barbaz"
      User.create!(:name => name, 
                   :email => email, 
                   :password => password,
                   :password_confirmation => password)
    end
  end
end