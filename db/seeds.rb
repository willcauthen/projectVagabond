# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(user_name: 'Chris',
			email: 'chris@chris.com',
			password: 'christopher',
			current_city: 'San Francisco',
			about: 'For Gondor!')
User.create(user_name: 'Will',
			email: 'will@will.com',
			password: 'william',
			current_city: 'Sonoma',
			about: 'I love turtles!')
User.create(user_name: 'Uriel',
			email: 'uriel@uriel.com',
			password: 'tannedalbino',
			current_city: 'Menlo Park',
			about: 'Menlo Park is awesome')
User.create(user_name: 'Laura',
			email: 'laura@laura.com',
			password: 'laurab',
			current_city: 'Palo Alto',
			about: 'Im Laura B!')
User.create(user_name: 'mojojoejoe',
			email: 'joe@joe.com',
			password: 'joejoejoe',
			current_city: 'New York',
			about: 'Phil Collins understands me')
City.create(name: 'San Francisco, CA',
			lat: 37.790,
			lng: -122.403,
			CityImg: 'SanFrancisco')
City.create(name: 'Cleveland, OH',
			lat: 41.506,
			lng: -81.701,
			CityImg: 'Cleveland')

City.create(name: 'New York, NY',
			lat: 40.689,
			lng: -74.046,
			CityImg: 'NewYork')
City.create(name: 'Boston, MA',
			lat: 42.346,
			lng: -71.099,
			CityImg: 'Boston')

City.create(name: 'London, UK',
			lat: 51.501,
			lng: -0.144,
			CityImg: 'London')


Post.create(city: 'San Francisco, CA',
			title: 'Post1',
			user: "1",
			content: 'The Golden Gate bridge is not made of gold.  Talk about bait and switch.')
Post.create(city: 'San Francisco, CA',
			title: 'Post2',
			user: "1",
			content: 'Palace of fine arts is beautiful.  No art though.')
Post.create(city: 'Cleveland, OH',
			title: 'Post3',
			user: "1",
			content: 'Cousin Bubba was right, the squirrel here is delish')
Post.create(city: 'Cleveland, OH',
			title: 'Post1',
			user: "2",
			content: 'The whole town supports the Browns!!! Everything is covered in brown stuff.')
Post.create(city: 'Cleveland, OH',
			title: 'Post2',
			user: "2",
			content: "I can't tell if the elementary school doubles for the university, but they both have lovely swings.")
Post.create(city: 'Cleveland, OH',
			title: 'Post3',
			user: "2",
			content: 'Can you believe there is a Fairmont Hotel in Cleveland???!!!')
Post.create(city: 'Cleveland, OH',
			title: 'Post1',
			user: "3",
			content: 'Did I mention that the Browns play here? I can only say that for another year.')
Post.create(city: 'Cleveland, OH',
			title: 'Post2',
			user: "3",
			content: 'I did not realize that the Browns had a smell.  Someone needs to flush.')
Post.create(city: 'San Francisco, CA',
			title: 'Post3',
			user: "3",
			content: 'Sam Wo is everything Conan said it would be, and more!!!')
Post.create(city: 'San Francisco, CA',
			title: 'Post1',
			user: "4",
			content: 'Try the Jameyster app, best tourguide of SF!!!')
Post.create(city: 'New York, NY',
			title: 'Post2',
			user: "4",
			content: 'There are no more options')
Post.create(city: 'New York, NY',
			title: 'Post3',
			user: "4",
			content: 'I am special')
Post.create(city: 'New York, NY',
			title: 'Post1',
			user: "5",
			content: 'I am one of a kind')
Post.create(city: 'New York, NY',
			title: 'Post2',
			user: "5",
			content: 'I am a snowflake')
Post.create(city: 'London, UK',
			title: 'Post3',
			user: "5",
			content: 'I am unique')


