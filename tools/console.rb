# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Mtitle1")
m2 = Movie.new("Mtitle2")
m3 = Movie.new("Mtitle3")

v1 = Viewer.new("username1")
v2 = Viewer.new("username2")
v3 = Viewer.new("username3")

r1 = Review.new(v1, m1, 5)
r2 = Review.new(v1, m2, 1)
r3 = Review.new(v2, m1, 2)
r4 = Review.new(v2, m2, 1)
r5 = Review.new(v2, m3, 2)
r6 = Review.new(v3, m1, 3)
r7 = Review.new(v3, m3, 4)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
