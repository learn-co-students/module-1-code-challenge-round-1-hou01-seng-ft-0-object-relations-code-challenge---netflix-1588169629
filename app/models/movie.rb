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
    Review.all.select {|r| r.movie == self}
  end 

  def reviewers
    reviews.map {|r| r.viewer}
  end 

  def average_rating  
    total = 0
    num_of_rating = reviews.length
    reviews.each {|r| total += r.rating}
    (total.to_f) / (num_of_rating.to_f) 
  end 

  def self.highest_rated
    highest_rating = 0
    result = ""
    Movie.all.each do |m|
      if m.average_rating > highest_rating 
        result = m
      end 
    end 
    result 
  end 


end
