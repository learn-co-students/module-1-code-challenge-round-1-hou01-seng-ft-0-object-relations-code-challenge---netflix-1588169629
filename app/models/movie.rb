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
    Review.all.select do |inst| inst.movie == self 
    end 
  end 

  def reviewers 
    reviews.map do |inst| inst.viewer end 
  end 

  def average_rating
    if self.reviews.empty?
      average_rating=0 
    else 
      average_rating = reviews.map do |inst| inst.rating end.sum.to_f / reviews.count 
    end
    average_rating   
  end 

  def self.highest_rated
    self.all.max_by do |inst| inst.average_rating end 
  end 

end
