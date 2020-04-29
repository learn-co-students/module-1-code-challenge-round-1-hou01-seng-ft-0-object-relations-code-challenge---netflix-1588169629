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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}.uniq
  end 

  def average_rating
    # to average ratings, add all ratings together and divide by the total number of ratings.
    (reviews.map {|review| review.rating}.sum)/reviews.size.to_f
  end 

  def self.highest_rated
    highest = Movie.all[0]
    highest_rating = highest.average_rating
    all.map do |movie|
      if movie.average_rating > highest_rating
        highest = movie
        highest_rating = movie.average_rating
      end 
    end 
    highest 
  end 

end


#DONE
# - `Movie#reviews`
# - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
# - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
# - `Movie#average_rating`
# - returns the average of all ratings for the `Movie` instance
# - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
# - returns the `Movie` instance with the highest average rating.

#   #PREDONE

#   - `Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized
# - `Movie#title`
#   - returns the `Movie`s title
# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized
