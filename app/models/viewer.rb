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

  def reviews
    Review.all.select {|reviews| reviews.viewer == self}
  end

  def reviewed_movies
    reviews.map {|reviews| reviews.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.find {|movies| movies == movie} ? true : false
  end

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
    Review.new(self, movie, rating)
    else
      reviews.find {|reviewes| reviewes.rating = rating}
    end
  end
  
end
