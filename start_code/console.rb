require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

require('pry')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({'first_name' => 'Ewan', 'last_name' => 'Mcgregor' })
star1.save()

movie1 = Movie.new({'title' => 'Trainspotting', 'genre' => 'Drama'})
movie1.save()

casting1 = Casting.new({'fee' => 10000, 'star_id' => star1.id, 'movie_id' => movie1.id})
casting1.save()

binding.pry
nil
