# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Batman")
m2 = Movie.new("Joker")
m3 = Movie.new("Gladiator")

v1 = Viewer.new("freddy")
v2 = Viewer.new("rick")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v2, m1, 20)
r3 = Review.new(v2, m2, 30)
r4 = Review.new(v1, m2, 50)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
