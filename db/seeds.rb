# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@admin_user = User.new(:email => 'whinecountrybernedoodles@gmail.com', :password => 'password', :password_confirmation => 'password')
@admin_user.save

# @picture = Picture.new(name: File.new("../assets/images/6.jpg"))
# @picture.save
