require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

require('pry')

star1 = Star.new({'first_name' => 'Ewan', 'last_name' => 'Mcgregor' })

movie1 = Movie.new({'title' => 'Trainspotting', 'genre' => 'Drama'})

casting1 = Casting.new({'fee' => '£10000', 'star_id' => star1.id, 'movie_id' => movie1.id})

binding.pry
nil
