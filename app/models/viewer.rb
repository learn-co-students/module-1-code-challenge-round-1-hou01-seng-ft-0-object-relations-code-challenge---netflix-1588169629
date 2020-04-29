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
    Review.all.select {|x| x.viewer == self}
  end

  def reviewed_movies
    reviews.map {|x| x.movie}
  end

  def reviewed_movie?(movie)
    #going to want to use .include?
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie,rating)
    #new Review if viewer and movie have no review
    if reviewed_movie?(movie) == false
      review = Review.new(self,movie,rating)
    #if there is already a review then assign new rating
    else  
      new_review = reviews.map {|x| x.rating = rating}
    end
    
  end
  
end
