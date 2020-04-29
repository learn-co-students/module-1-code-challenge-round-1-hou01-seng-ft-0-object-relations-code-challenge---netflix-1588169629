class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    #returns an array of review instanced associated with the viewer instance
    Review.all.select {|rev| rev.viewer == self}
  end

  def reviewed_movies
    #returns an array of movie instances reviewed by the viewer
    reviews.map {|rev| rev.movie}
  end

  def reviewed_movie?(movie)
    #a movie INSTANCE is the only argument
    #returns true if the viewer has reviewed this movie (if there is a review instance that has this
    #viewer and movie), returns false otherwise
    reviewed_movies.any? {|mov| mov == movie}
  end

  def review_of_movie(movie1) # i added
    #returns review of given movie instance)
    reviews.select {|rev| rev.movie == movie1}
  end

  def rate_movie(movie1, rating1)
    #given a movie and a rating
    #if the viewer instance and the passed movie instance are not already associated,
    #this methos should create a new review intance
    #else, assigns the new rating to the existing review instance

      Review.new(self, movie1, rating1) unless reviewed_movie?(movie1)
      # i cant get this to work.. i can create the new one... 
      #but getting mixed up on how to assign a current review, a new rating



    # if reviewed_movie?(movie1) 
    #   x = review_of_movie(movie1).rating
    #   x.rating = rating1
    # else
    #   Review.new(self, movie1, rating1)
    # end
  end

end
