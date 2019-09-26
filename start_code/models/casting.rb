require_relative("./movie")
require_relative("./star")
require_relative("../db/sql_runner")

class Casting

  attr_reader :id
  attr_accessor :fee, :star_id, :movie_id

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @fee = options['fee']
    @star_id = options['star_id'].to_i
    @movie_id = options['movie_id'].to_i
  end

  def save()
    sql = "INSERT INTO castings
    (
      fee,
      star_id,
      movie_id
      ) VALUES (
        $1, $2, $3
        ) RETURNING id"
        values = [@fee, @star_id, @movie_id]
        casting = SqlRunner.run(sql, values).first
        @id = casting['id'].to_i

      end







    end
