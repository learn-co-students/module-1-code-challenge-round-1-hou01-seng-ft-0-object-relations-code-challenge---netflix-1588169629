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
    Review.all.select do |inst| inst.viewer == self 
    end 
  end 

  def reviewed_movies
    reviews.map do |inst| inst.movie end 
  end 

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end 

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
      Review.new(viewer: self, movie: movie, rating: rating)
    else 
      current_review = Review.all.find do |inst| inst.movie == movie end 
        current_review.rating = rating 
    end 
  end 

end
