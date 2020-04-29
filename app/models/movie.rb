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
    Review.all.select{|rev|rev.movie == self}
  end

  def reviewers
    reviews.map{|rev|rev.viewer}
  end

  def average_rating
    reviews.map{|rev|rev.rating}.sum/reviews.length
  end

  def self.highest_rated
    # highest_rating = Movie.all.map{|movie|movie.average_rating}.max
    # I suppose I could just shove it all into one line, cause why not?
    Movie.all.find{|movie| movie.average_rating == (Movie.all.map{|movie|movie.average_rating}.max)}
  end

end
