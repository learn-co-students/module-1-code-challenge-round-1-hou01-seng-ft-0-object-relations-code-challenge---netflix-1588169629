# A review belongs to a viewer and a movie (joiner)
class Review
    # getter and setter method
    attr_accessor :viewer, :movie, :rating

    # empty array that we will push review instances into
    @@all = []

    # initializes review with viewer, rating and movie and pushes review instances into the all array
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end

    # returns an array of all initialized review instances
    def self.all
        @@all
    end

end
