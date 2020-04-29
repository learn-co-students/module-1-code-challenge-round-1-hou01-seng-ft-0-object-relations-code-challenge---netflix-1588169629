class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|p| p.movie == self}
  end

  def reviewers
    reviews.map {|p| p.viewer}
  end

  def average_rating
   
  end



end
