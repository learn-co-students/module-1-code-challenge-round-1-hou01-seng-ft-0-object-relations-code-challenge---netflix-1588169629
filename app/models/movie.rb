class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    #returns an array of all the review instances for the movie
    Review.all.select {|rev| rev.movie == self}
  end

  def reviewers
    #returns an array of all the viewer instances that reviewed the movie
    reviews.map {|rev| rev.viewer}
  end

  def sum_of_ratings  # I ADDED
    #returns sum of all ratings
    reviews.map {|rev| rev.rating}.sum
  end

  def total_count # I ADDED
    #returns total number of reviews of this movie
    reviews.count
  end

  def average_rating
    #retuns the average of all ratings for the movie instance
    #to average ratings, add all ratings together and divide by the total number of ratings
    sum_of_ratings/total_count
  end

 

  def self.highest_rated
    #returns the movie instance with the highest average rating
    self.all.max {|a,b| a.average_rating <=> b.average_rating}

  end


end
