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
    Review.all.select{|rev|rev.viewer == self}
  end

  def reviewed_movies
    reviews.map{|rev|rev.movie}
  end

  def reviewed_movie?(movie)
    Review.all.find{|rev|rev.movie == movie && rev.viewer == self} ? true : false
  end

  def rate_movie(movie, rating)
    reviewed_movie?(movie) ? Review.all.find{|rev|rev.movie == movie && rev.viewer == self}.rating = rating : Review.new(self, movie, rating) 
  end

end
