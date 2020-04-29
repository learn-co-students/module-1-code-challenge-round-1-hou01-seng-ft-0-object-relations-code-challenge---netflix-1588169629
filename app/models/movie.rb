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
    Review.all.select {|x| x.movie == self}
  end

  def reviewers
    reviews.map {|x| x.viewer}
  end

  def average_rating
    reviews.map{|x| x.rating}.sum / reviews.count
  end

  def self.highest_rated
    Review.all.map {|x| x.rating}.max
  end

end
