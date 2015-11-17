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
			content: 'My name is Wilbo, and I am limited to a wheelchair. The BART rail system in San Francisco has good accessibility for those with similar mobility restrictions.')
Post.create(city: 'San Francisco, CA',
			title: 'Post2',
			user: "1",
			content: 'The building at 225 Bush Street is not only lovely beyond compare, but also has a totally baller assistive listening system available.')
Post.create(city: 'Cleveland, OH',
			title: 'Post3',
			user: "1",
			content: 'blah blah blah3')
Post.create(city: 'Cleveland, OH',
			title: 'Post1',
			user: "2",
			content: 'blah blah blah')
Post.create(city: 'Cleveland, OH',
			title: 'Post2',
			user: "2",
			content: 'blah blah blah2')
Post.create(city: 'Cleveland, OH',
			title: 'Post3',
			user: "2",
			content: 'blah blah blah3')
Post.create(city: 'Cleveland, OH',
			title: 'Post1',
			user: "3",
			content: 'blah blah blah')
Post.create(city: 'Cleveland, OH',
			title: 'Post2',
			user: "3",
			content: 'blah blah blah2')
Post.create(city: 'San Francisco, CA',
			title: 'Post3',
			user: "3",
			content: 'The Rusty Nipple, a burlesque show in The Castro, is not very good for the visually impaired. They gave me a hard time about my seeing-eye dog and tried to refuse us entry.')
Post.create(city: 'San Francisco, CA',
			title: 'Post1',
			user: "4",
			content: 'The San Francisco was a great place, my son, who lives with ASD, had a great time looking at the exhibits.')
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
			content: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.')
Post.create(city: 'London, UK',
			title: 'Post3',
			user: "2",
			content: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.')
Post.create(city: 'London, UK',
			title: 'Post3',
			user: "1",
			content: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.')
Post.create(city: 'London, UK',
			title: 'Post3',
			user: "5",
			content: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.')


