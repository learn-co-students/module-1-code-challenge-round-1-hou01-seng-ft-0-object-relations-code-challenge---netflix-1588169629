# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movie = title
m1 = Movie.new("Cinderella")
m2 = Movie.new("Alladin")
m3 = Movie.new("Tangled")
m4 = Movie.new("Little Mermaid")

#viewer = username
v1 = Viewer.new("mtmgirl")
v2 = Viewer.new("bluelemurs")
v3 = Viewer.new("kedfam3")
v4 = Viewer.new("krysta110")

# review = (viewer, movie, rating)
r1 = Review.new(v1, m1, 5)
r2 = Review.new(v2, m2, 3)
r3 = Review.new(v3, m3, 2)
r4 = Review.new(v4, m4, 4)
r5 = Review.new(v1, m2, 4)
r6 = Review.new(v2, m1, 5)
r7 = Review.new(v3, m2, 5)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
