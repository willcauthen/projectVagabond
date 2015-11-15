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
			lat: nil,
			lng: nil)
City.create(name: 'Cleveland, OH',
			lat: nil,
			lng: nil)

City.create(name: 'New York, NY',
			lat: nil,
			lng: nil)
City.create(name: 'Bahstun, MASS',
			lat: nil,
			lng: nil)

City.create(name: 'London, UK',
			lat: nil,
			lng: nil)


Post.create(city: 'San Fran',
			title: 'Post1',
			user: "1",
			content: 'blah blah blah')
Post.create(city: 'San Fran',
			title: 'Post2',
			user: "1",
			content: 'blah blah blah2')
Post.create(city: 'San Fran',
			title: 'Post3',
			user: "1",
			content: 'blah blah blah3')
Post.create(city: 'San Fran',
			title: 'Post1',
			user: "2",
			content: 'blah blah blah')
Post.create(city: 'San Fran',
			title: 'Post2',
			user: "2",
			content: 'blah blah blah2')
Post.create(city: 'San Fran',
			title: 'Post3',
			user: "2",
			content: 'blah blah blah3')
Post.create(city: 'San Fran',
			title: 'Post1',
			user: "3",
			content: 'blah blah blah')
Post.create(city: 'San Fran',
			title: 'Post2',
			user: "3",
			content: 'blah blah blah2')
Post.create(city: 'San Fran',
			title: 'Post3',
			user: "3",
			content: 'blah blah blah3')
Post.create(city: 'San Fran',
			title: 'Post1',
			user: "4",
			content: 'blah blah blah')
Post.create(city: 'San Fran',
			title: 'Post2',
			user: "4",
			content: 'blah blah blah2')
Post.create(city: 'San Fran',
			title: 'Post3',
			user: "4",
			content: 'blah blah blah3')
Post.create(city: 'San Fran',
			title: 'Post1',
			user: "5",
			content: 'blah blah blah')
Post.create(city: 'San Fran',
			title: 'Post2',
			user: "5",
			content: 'blah blah blah2')
Post.create(city: 'San Fran',
			title: 'Post3',
			user: "5",
			content: 'blah blah blah3')


