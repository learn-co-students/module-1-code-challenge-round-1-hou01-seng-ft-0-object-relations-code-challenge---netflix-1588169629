class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end
  
  def reviewed_movie?(movie)
    Review.all.each do |review|
      if review.movie = movie && review.viewer == self
      end
    end
  end

end
