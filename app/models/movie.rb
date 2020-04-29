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
    Review.all.select {|rev| rev.movie == self}
    
  end

  def viewers
    reviews.map {|rev| rev.viewer}
  end


  def average_rating
    sum = 0
    counter = 0
    reviews.movies.count
    reviews.select {|rev| sum += rev.rating}
    sum
  end

  # def reviewers # this is supposed to be selected from the viewers already defined

  def reviewers
    reviews.select {|rev| rev.viewer}
  end

  def self.highest_rated
    Movie.all.map {|mov|}
  end



end
