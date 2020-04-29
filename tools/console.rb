# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

v1=Viewer.new("SCheney")
v2=Viewer.new("Mcheney")
v3=Viewer.new("ECheney")
v4=Viewer.new("Ocheney")

m1=Movie.new("Walking Dead")
m2=Movie.new("Bubble Guppies")
m3=Movie.new("Magic Show")
m4=Movie.new("Sound of Music")
m5=Movie.new("Awake")

r1=Review.new(viewer: v1, movie: m1, rating: 8)
r2=Review.new(viewer: v2, movie: m3, rating: 60)
r3=Review.new(viewer: v3, movie: m3, rating: 7)
r4=Review.new(viewer:v4, movie: m4, rating: 9)
r5=Review.new(viewer:v2, movie: m5, rating: 10)
r6=Review.new(viewer:v1, movie: m5, rating: 1)
r7=Review.new(viewer:v4, movie: m5, rating: 4)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
