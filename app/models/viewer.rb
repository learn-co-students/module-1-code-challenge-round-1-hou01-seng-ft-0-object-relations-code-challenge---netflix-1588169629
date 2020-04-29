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
    Review.all.select {|p| p.viewer == self}
  end

  def reviewed_movies
    reviews.map {|p| p.movie}
  end

  def 

  
end
