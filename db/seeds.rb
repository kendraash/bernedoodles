# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@admin_user = User.new(:email => 'whinecountrybernedoodles@gmail.com', :password => 'password', :password_confirmation => 'password')
@admin_user.save

Dog.create!([
  {name: "Echo", date_of_birth: "2012-11-12 00:00:00", sex: "female", user_id: 1},
])

Dog.create!([
  {name: "Noli", date_of_birth: "2012-11-10 00:00:00", sex: "female", user_id: 1},
])
Litter.create!([
  {due_date: "2015-11-14 00:00:00", user_id: 1, dog_id: 1}
])
Litter.create!([
  {due_date: "2015-02-27 00:00:00", user_id: 1, dog_id: 2}
])
# Picture.create!([
#   {name_file_name: "a.jpg", name_content_type: "image/jpeg", name_file_size: 22985, name_updated_at: "2015-11-09 21:55:55", imageable_id: 6, imageable_type: "Puppy"},
#   {name_file_name: "aa.jpg", name_content_type: "image/jpeg", name_file_size: 27308, name_updated_at: "2015-11-09 21:56:29", imageable_id: 6, imageable_type: "Puppy"},
#   {name_file_name: "aqua.jpg", name_content_type: "image/jpeg", name_file_size: 24243, name_updated_at: "2015-11-09 21:56:57", imageable_id: 6, imageable_type: "Puppy"},
#   {name_file_name: "black.jpg", name_content_type: "image/jpeg", name_file_size: 18277, name_updated_at: "2015-11-09 22:34:44", imageable_id: 7, imageable_type: "Puppy"},
#   {name_file_name: "black2.jpg", name_content_type: "image/jpeg", name_file_size: 20220, name_updated_at: "2015-11-09 22:35:03", imageable_id: 7, imageable_type: "Puppy"},
#   {name_file_name: "blue.jpg", name_content_type: "image/jpeg", name_file_size: 20883, name_updated_at: "2015-11-09 22:35:31", imageable_id: 8, imageable_type: "Puppy"},
#   {name_file_name: "blue2.jpg", name_content_type: "image/jpeg", name_file_size: 24728, name_updated_at: "2015-11-09 22:35:57", imageable_id: 8, imageable_type: "Puppy"},
#   {name_file_name: "brown.jpg", name_content_type: "image/jpeg", name_file_size: 19111, name_updated_at: "2015-11-09 22:36:43", imageable_id: 9, imageable_type: "Puppy"},
#   {name_file_name: "brown2.jpg", name_content_type: "image/jpeg", name_file_size: 25815, name_updated_at: "2015-11-09 22:37:12", imageable_id: 9, imageable_type: "Puppy"},
#   {name_file_name: "hotpink.jpg", name_content_type: "image/jpeg", name_file_size: 23941, name_updated_at: "2015-11-09 22:37:45", imageable_id: 10, imageable_type: "Puppy"},
#   {name_file_name: "hotpink2.jpg", name_content_type: "image/jpeg", name_file_size: 26881, name_updated_at: "2015-11-09 22:38:08", imageable_id: 10, imageable_type: "Puppy"},
#   {name_file_name: "lime.jpg", name_content_type: "image/jpeg", name_file_size: 27929, name_updated_at: "2015-11-09 22:38:33", imageable_id: 11, imageable_type: "Puppy"},
#   {name_file_name: "lime2.jpg", name_content_type: "image/jpeg", name_file_size: 23985, name_updated_at: "2015-11-09 22:38:55", imageable_id: 11, imageable_type: "Puppy"},
#   {name_file_name: "red.jpg", name_content_type: "image/jpeg", name_file_size: 23849, name_updated_at: "2015-11-09 22:39:21", imageable_id: 12, imageable_type: "Puppy"},
#   {name_file_name: "red2.jpg", name_content_type: "image/jpeg", name_file_size: 20947, name_updated_at: "2015-11-09 22:39:47", imageable_id: 12, imageable_type: "Puppy"},
#   {name_file_name: "green.jpg", name_content_type: "image/jpeg", name_file_size: 30798, name_updated_at: "2015-11-09 22:40:25", imageable_id: 1, imageable_type: "Puppy"},
#   {name_file_name: "green2.jpg", name_content_type: "image/jpeg", name_file_size: 27590, name_updated_at: "2015-11-09 22:41:23", imageable_id: 1, imageable_type: "Puppy"},
#   {name_file_name: "orange.jpg", name_content_type: "image/jpeg", name_file_size: 29669, name_updated_at: "2015-11-09 22:41:44", imageable_id: 2, imageable_type: "Puppy"},
#   {name_file_name: "orange2.jpg", name_content_type: "image/jpeg", name_file_size: 26977, name_updated_at: "2015-11-09 22:42:20", imageable_id: 2, imageable_type: "Puppy"},
#   {name_file_name: "purple.jpg", name_content_type: "image/jpeg", name_file_size: 35331, name_updated_at: "2015-11-09 22:42:42", imageable_id: 3, imageable_type: "Puppy"},
#   {name_file_name: "purple2.jpg", name_content_type: "image/jpeg", name_file_size: 27683, name_updated_at: "2015-11-09 22:43:17", imageable_id: 3, imageable_type: "Puppy"},
#   {name_file_name: "tan.jpg", name_content_type: "image/jpeg", name_file_size: 29921, name_updated_at: "2015-11-09 22:43:51", imageable_id: 4, imageable_type: "Puppy"},
#   {name_file_name: "tan2.jpg", name_content_type: "image/jpeg", name_file_size: 28971, name_updated_at: "2015-11-09 22:44:21", imageable_id: 4, imageable_type: "Puppy"},
#   {name_file_name: "yellow.jpg", name_content_type: "image/jpeg", name_file_size: 28151, name_updated_at: "2015-11-09 22:45:01", imageable_id: 5, imageable_type: "Puppy"},
#   {name_file_name: "yellow2.jpg", name_content_type: "image/jpeg", name_file_size: 33674, name_updated_at: "2015-11-09 22:45:10", imageable_id: 5, imageable_type: "Puppy"},
#   {name_file_name: "noli.jpg", name_content_type: "image/jpeg", name_file_size: 34514, name_updated_at: "2015-11-09 22:46:51", imageable_id: 2, imageable_type: "Dog"}
# ])
Puppy.create!([
  {name: "Green", sex: "male", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Orange", sex: "male", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Purple", sex: "male", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Tan", sex: "male", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Yellow", sex: "male", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Aqua", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Black", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Blue", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Brown", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Hot Pink", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Lime Green", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5},
  {name: "Red", sex: "female", date_of_birth: "2015-02-27 00:00:00", litter_id: 2, user_id: 1, weight: 5}
])
