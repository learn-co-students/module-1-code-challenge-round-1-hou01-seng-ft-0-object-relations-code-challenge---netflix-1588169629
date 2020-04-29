# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code????
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console (terminal)

#make movies
dory = Movie.new("Finding Dory")
moana = Movie.new("Moana")
mulan = Movie.new("Mulan")
cars = Movie.new("Cars 2")
# -- 
polar = Movie.new("The Polar Express")

#make viewers
phyllis = Viewer.new("eiphyllis")
eric = Viewer.new("Scurvey")
blue = Viewer.new("blue_IV")
# -- 
beyonce = Viewer.new("BGKC")

#make reviews
#on a scale of 1-5 stars (could be a percentage of 100, could be a scale of 1-10)
#movie with no reviews - polar 
#user with no reviews - beyonce 
# -- 
#movie with multiple reviews
#user with multiple reviews
r1 = Review.new(phyllis, dory, 5)
r2 = Review.new(blue, dory, 5)
r3 = Review.new(phyllis, mulan, 4)
r4 = Review.new(phyllis, moana, 5)
r5 = Review.new(eric, cars, 5)
r6 = Review.new(blue, cars, 1)



# IN-"CONSOLE" TESTS:
#PASSED
#get viewer, movie, rating, and all for review class
#get title, and all for movie class
#change a movie's title
#get username, and all for viewer class
#change a viewer's username
# - `Movie#reviews`
# - `Movie#reviewers`
# - `Movie#average_rating`
# - `Movie.highest_rated`
#   - `Viewer#reviews`
# - `Viewer#reviewed_movies`
#   - `Viewer#reviewed_movie?(movie)`
# - `Viewer#rate_movie(movie, rating)`

# beyonce should have no reviews
# polar has no avg rating
# polar should have no reviews




#why not Pry.start?
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
