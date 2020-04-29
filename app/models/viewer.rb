# A viewer has many reviews
class Viewer
  # getter and setter method, allows username to be called and changed
  attr_accessor :username

  # empty array that we will push viewer instances into
  @@all = []

  # initializes viewer with username (string) and pushes instance into all array
  def initialize(username)
    @username = username
    self.class.all << self
  end

  # returns an array of all viewer instances that have been initialized
  def self.all
    @@all
  end

  # returns an array of review instances associated with self
  def reviews
    Review.all.select {|rw| rw.viewer == self}
  end

  # returns an array of movie instances reivewed by viewer instance
  def reviewed_movies
    reviews.map {|rw| rw.movie}
  end

  # helper method that returns review instance instead of true/false
  def movie_review(movie_inst)
    reviews.find {|rw| rw.movie == movie_inst}
  end

  # takes a movie instance argument and returns true if viewer reviewed movie, otherwise return false
  def reviewed_movie?(movie_inst)
    if movie_review(movie_inst)
      true
    else
      false
    end
    # reviewed_movies.any? {|mv| mv == movie_inst}
  end

  # takees a movie instance and rating and returns a new review IF viewer and movie are not already associated if they are then updates rating
  def rate_movie(movie_inst, rating_num)
    if movie_review(movie_inst)
      movie_review(movie_inst).rating = rating_num
    else
      Review.new(self, movie_inst, rating_num)
    end
    movie_review(movie_inst)
  end
end
