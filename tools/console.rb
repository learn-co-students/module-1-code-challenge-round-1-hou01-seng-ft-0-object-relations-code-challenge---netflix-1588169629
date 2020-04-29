# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mv1 = Movie.new("All about the Benjamins")
mv2 = Movie.new("Extraction")
mv3 = Movie.new("The Whyllobys")
mv4 = Movie.new("Little Fires Everywhere")

vw1 = Viewer.new("Ava")
vw2 = Viewer.new("Lauren")
vw3 = Viewer.new("Kristie")

rw1 = Review.new(vw2, mv1, 8)
rw2 = Review.new(vw3, mv4, 9)
rw3 = Review.new(vw1, mv3, 9)
rw4 = Review.new(vw2, mv3, 8)
rw5 = Review.new(vw3, mv2, 7)

mv1.title
# returns "All about the Benjamins"
Movie.all 

vw2.username
# returns "Lauren"
Viewer.all

rw1.rating
# returns 8
rw2.viewer 
# returns Kristie viewer instance
rw2.movie
# returns little fires everywhere movie instance
Review.all

vw2.reviews
vw2.reviewed_movies

mv3.reviews
mv3.reviewers

vw1.reviewed_movie?(mv2) 
# returns false
vw1.reviewed_movie?(mv3)
# returns true

vw3.rate_movie(mv1, 5)
# returns new review instance
vw3.rate_movie(mv4, 10)
# returns updated review instance
vw3.reviews

mv3.average_rating
# returns 8.5
Movie.highest_rated
# returns little fires everywhere instance


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
