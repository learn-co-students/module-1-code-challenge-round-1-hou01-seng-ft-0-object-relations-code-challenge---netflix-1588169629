# Movie#average_rating
# returns the average of all ratings for the Movie instance
# to average ratings, add all ratings together and divide by the total number of ratings.

# Movie.highest_rated
# returns the Movie instance with the highest average rating.

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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end


  def average_rating
    watchers = @@all.count
    x = Review.all.select {|review| review.movie == self}
    total = x.collect {|review| review.rating}.sum.to_f
    total/watchers
  end

  def self.highest_rated
    #get average rating for each movie and return highest movie instance

  end
end