# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("AAAAAAAA")
m2 = Movie.new("BBBBBBBB")
m3 = Movie.new("CCCCCCCC")
m4 = Movie.new("DDDDDDDD")
m5 = Movie.new("EEEEEEEE")

v1 = Viewer.new("User1")
v2 = Viewer.new("User2")
v3 = Viewer.new("User3")
v4 = Viewer.new("User4")
v5 = Viewer.new("User5")

r1 = Review.new(v1,m1,5)
r2 = Review.new(v1,m2,4)
r3 = Review.new(v1,m3,3)
r4 = Review.new(v2,m4,1)
r5 = Review.new(v2,m5,2)
r6 = Review.new(v3,m2,7)
r7 = Review.new(v1,m5,8)
r8 = Review.new(v4,m4,4)
r9 = Review.new(v5,m1,1)
r10 = Review.new(v5,m5,9)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
