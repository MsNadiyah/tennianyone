# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
	{name: "Rafael Nadal", user_type: "player", zip: 90043, email: "dummy-rafael.nadal@email.com", gender: "Male"},
	{name: "Roger Federer", user_type: "player", zip: 90071, email: "dummy-roger.federer@email.com", gender: "Male"},
	{name: "Novak Djokovic", user_type: "player", zip: 90008, email: "dummy-novak.djokovic@email.com", gender: "Male"},
	{name: "Jo Wilfred Tsonga", user_type: "player", zip: 90291, email: "dummy-jo-tsonga@email.com", gender: "Male"},
	{name: "Gael Monfils", user_type: "player", zip: 90210, email: "dummy-gael.monfils@email.com", gender: "Male"},
	{name: "Serena Williams", user_type: "instructor", zip: 90405, email: "dummy-serena.williams@email.com", gender: "Female"},
	{name: "Caroline Wozniacki", user_type: "instructor", zip: 90211, email: "dummy-caroline.wozniacki@email.com", gender: "Female"},
	{name: "Anna Ivanovic", user_type: "instructor", zip: 90066, email: "dummy-anna.ivanovic@email.com", gender: "Female"},
	{name: "Taylor Townsend", user_type: "instructor", zip: 90045, email: "dummy-taylor.townsend@email.com", gender: "Female"},
	{name: "Petra Nemcova", user_type: "instructor", zip: 90272, email: "dummy-petra-nemcova@email.com", gender: "Female"}
])
