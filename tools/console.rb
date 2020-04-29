# require and load the environment file
require_relative '../config/environment.rb'
# require_relative '../app/movie.rb'
# require_relative '../app/reivew.rb'
# require_relative '../app/viewer.rb'
# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
lionking = Movie.new("lion king")
money = Movie.new("money")
prisonbreak = Movie.new("prison break")
got = Movie.new("got")

a = Viewer.new("a")
b = Viewer.new("b")
c = Viewer.new("c")
d = Viewer.new("d")

r1 = Review.new(a, lionking, 8.5)
r2 = Review.new(b, got, 9.8)
r3 = Review.new(c, got, 7.9)
r4 = Review.new(c, money, 9.0)
r5 = Review.new(d, lionking, 9.0)








# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
