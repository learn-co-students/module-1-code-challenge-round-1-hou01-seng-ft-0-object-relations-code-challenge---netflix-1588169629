# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("Titanic")
m2 = Movie.new("Love Is Blind")
m3 = Movie.new("Money Heist")
m4 = Movie.new("Cleopatra")
m5 = Movie.new("Home Alone")
m6 = Movie.new("Captain America")
m7 = Movie.new("Prison Break")



v1 = Viewer.new("teeman")
v2 = Viewer.new("debbysam")
v3 = Viewer.new("flowermain")
v4 = Viewer.new("oathsofdguns")
v5 = Viewer.new("lordsage")
v6 = Viewer.new("despicmode")


r1 = Review.new(v1, m3, 7)
r2 = Review.new(v3, m1, 4)
r3 = Review.new(v5, m5, 6)
r4 = Review.new(v1, m4, 9)
r5 = Review.new(v4, m2, 3)
r6 = Review.new(v2, m6, 8)
r7 = Review.new(v1, m1, 10)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
