# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.create([{user_post: 'perfect', movie_id: '1', rating: '5'},
  {user_post: 'decent', movie_id: '1', rating: '2'},
  {user_post: 'amazing', movie_id: '2', rating: '4'},
  {user_post: 'good', movie_id: '3', rating: '3'},
  {user_post: 'bad', movie_id: '4', rating: '1'},
  {user_post: 'really bad', movie_id: '1', rating: '2'},
  {user_post: 'perfect', movie_id: '2', rating: '5'},
  {user_post: 'fantastically bad', movie_id: '3', rating: '1'},
  {user_post: 'mediocre', movie_id: '4', rating: '1'},
  {user_post: 'perfect', movie_id: '1', rating: '5'},
  {user_post: 'very good', movie_id: '2', rating: '4'},
  {user_post: 'good', movie_id: '3', rating: '3'},
  {user_post: 'decent', movie_id: '4', rating: '2'},
  {user_post: 'perfectly bad', movie_id: '4', rating: '1'},
  {user_post: 'amazing', movie_id: '3', rating: '5'},
  {user_post: 'perfect', movie_id: '2', rating: '5'}])
