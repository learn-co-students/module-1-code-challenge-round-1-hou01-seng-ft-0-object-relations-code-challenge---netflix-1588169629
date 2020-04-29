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
    Review.all.select {|reviews| reviews.movie == self}
  end

  def reviewers
    reviews.map {|reviewers| reviewers.viewer}.uniq
  end

  def average_rating
    ratings = reviews.map {|reviews| reviews.rating}
    avg = (ratings.sum / ratings.count.to_f).ceil(2)
  end

  def self.highest_rated
    Review.all.max_by{|reviews|reviews.rating}
  end

end
