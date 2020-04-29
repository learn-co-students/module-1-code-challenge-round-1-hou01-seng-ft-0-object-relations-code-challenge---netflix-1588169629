# `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

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
    Review.all.select{|x| x.movie == self}
  end

  def reviewers
    reviews.map{|x| x.viewer}
  end

  def average_rating
    a = reviews.map{|x| x.rating}
    a.sum / a.size
  end

  def self.reviewss
    Review.all
  end

  def self.highest_rated
    a = reviewss.max_by{|x| x.rating}
    a.movie.title
  end
end
