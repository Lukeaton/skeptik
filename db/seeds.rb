# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Article seeds


#User seeds
User.destroy_all
u1 = User.create :name => "Luke Eaton", :admin => true, :email => "lukeaton@gmail.com", :password => "chicken"
u2 = User.create :name => "Aviva Sleigh", :admin => false, :email => "dipsy@winky.com", :password => "chicken"
u3 = User.create :name => "Aaron Shaw", :admin => false, :email => "lala@winky.com", :password => "chicken"



Article.destroy_all
a1 = Article.create(title: "Stalker", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", date: '16/05/1976', user_id: u1.id, image: 'https://www.placecage.com/c/200/300')

a2 = Article.create(title: "Only God Forgives", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", date: '18/09/1918', user_id: u1.id, image: 'https://www.placecage.com/c/300/300')

a3 = Article.create(title: "Alien", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", date: '01/01/2001', user_id: u1.id, image: 'https://www.placecage.com/c/400/300')
# 
# #Collection seeds
# Collection.destroy_all
# c1 = Collection.create(title: "Good Articles", user_id: u1.id)
# c2 = Collection.create(title: "My Articles", user_id: u1.id)
# c3 = Collection.create(title: "Emo", user_id: u1.id)
# c4 = Collection.create(title: "Trump", user_id: u1.id)
