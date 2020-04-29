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
    Review.all.select { |r| r.viewer == self }
  end

  def reviewed_movies
    self.reviews.map { |r| r.movie }
  end

  def reviewed_movie?(movie)
    movie.reviewers.include?(self)
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      self.reviews.find { |r| r.movie == movie }.rating = rating
    end
  end
end
