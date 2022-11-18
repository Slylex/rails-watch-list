# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'clearing Movies'
Movie.destroy_all

puts 'Creating 6 movies'
7.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraphs,
    poster_url: Faker::Internet.url,
    rating: rand(0..5)
  )
  movie.save!
end
puts 'Finished!'

puts 'clearing List'
List.destroy_all

puts 'Creating 5 lists'
5.times do
  list = List.new(
    name: Faker::Games::LeagueOfLegends.champion
  )
  list.save!
end
puts 'Finished!'
