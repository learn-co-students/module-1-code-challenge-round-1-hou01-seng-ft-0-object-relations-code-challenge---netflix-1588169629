
# Viewer#rate_movie(movie, rating)
# a Movie instance and a rating (number) are passed in as arguments
# if the Viewer instance and the passed Movie instance are not already associated, this method should create a new Review instance
# if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def movies
    Review.all.select {|review| review.viewer == self}
  end
  
  def movies_seen #show all movie instances seen by viewer
    movies.map {|review| review.movie}
  end

  def reviewed_movie?(movie)
    movies.include?(movie)
  end

  def rate_movie(movie, rating)
    reviewed_movie?(movie) ? review.rating = rating : Review.new(self, movie, rating)
  end
end
