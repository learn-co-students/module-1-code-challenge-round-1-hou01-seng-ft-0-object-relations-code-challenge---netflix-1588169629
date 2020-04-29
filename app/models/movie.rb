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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.each do |viewer|
      @viewer
    end
    
  end

  def average_rating
    total = 0
    Review.all.map do |review|

    end
  end

end
