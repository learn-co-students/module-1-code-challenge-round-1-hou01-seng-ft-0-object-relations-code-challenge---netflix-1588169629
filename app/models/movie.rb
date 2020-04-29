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
    Review.all.select { |r| r.movie == self }
  end

  def reviewers
    self.reviews.map { |r| r.viewer }
  end

  def average_rating 
    self.reviews.map { |r| r.rating }.sum / (self.reviews.length.nonzero? || 1)
  end

  def self.highest_rated
    highest_avg_rating = 0
    highest_avg_rated_movie = nil
    self.all.each { |movie| 
      if movie.average_rating > highest_avg_rating
        highest_avg_rated_movie = movie
        highest_avg_rating = movie.average_rating
      end 
    }
    highest_avg_rated_movie
  end

end
