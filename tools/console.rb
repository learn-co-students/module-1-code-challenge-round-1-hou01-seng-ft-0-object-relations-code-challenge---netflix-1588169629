# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Jaws")
m2 = Movie.new("Saw")
m3 = Movie.new("Pawn")
m4 = Movie.new("Lucky")
m5 = Movie.new("Thing")

v1 = Viewer.new("Killsault")
v2 = Viewer.new("Lilrobl")
v3 = Viewer.new("Hunancat")
v4 = Viewer.new("Poshin")
v5 = Viewer.new("LRB")

r1 = Review.new(v1,m1,15)
r2 = Review.new(v1,m2,10)
r3 = Review.new(v1,m3,10)
r4 = Review.new(v1,m5,33)
r5 = Review.new(v5,m1,13)
r6 = Review.new(v3,m1,23)
r7 = Review.new(v2,m4,10)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
