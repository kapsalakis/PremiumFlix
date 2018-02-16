# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create([{title:"Rusty Truck", description:"A rusty truck!", movie_length:"12 seconds!", director:"kapsa", url:"rustytruck"}, {title:"Love Boat", description:"A boat of love!", movie_length:"N/A", director:"kapsa", url:"LoveBoat"},
  {title:"Inbox Zero", description:"A box to zero", movie_length:"N/A", director:"kapsa", url:"InboxZero"},
  {title:"New England", description:"Like New Zealand", movie_length:"N/A", director:"kapsa", url:"NewEngland"}])
