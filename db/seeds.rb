# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Default Admin user
@user = User.create(:email => 'admin@example.com', :password => 'welcome1', :password_confirmation => 'welcome1')
@user.add_role "admin"
p "User created successfully"