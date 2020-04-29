# A movie has many reviews
class Movie
  # getter and setter method, allows title to be called and changed
  attr_accessor :title

  # empty array that we will push movies into
  @@all = []

  # initializes movie with a title (string) and pushes movie instance into all array
  def initialize(title)
    @title = title
    self.class.all << self
  end

  # returns an array of all movie instances that have been initialized
  def self.all
    @@all
  end

  # returns an array of all the review instances for self
  def reviews
    Review.all.select {|rw| rw.movie == self}
  end

  # returns an array of all viewer instances that reviewed the movie
  def reviewers
    reviews.map {|rw| rw.viewer}
  end

  # returns the average af all ratings for movie instance
  def average_rating
    average = 0
    sum = reviews.reduce(0) {|sum, rw| sum + rw.rating}
    average = sum.to_f / reviews.length
  end

  # returns the movie instance with the highest average rating
  def self.highest_rated
    all_reviews = all.map {|movie| movie.reviews}.flatten
    all_reviews.max_by {|rw| rw.rating}.movie
  end
end
