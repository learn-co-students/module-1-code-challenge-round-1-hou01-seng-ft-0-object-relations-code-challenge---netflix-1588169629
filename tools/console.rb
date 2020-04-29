# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#Movie instances
m1 = Movie.new("Love and Basketball")
m2 = Movie.new("Stranger Than Fiction")
m3 = Movie.new("In This Corner of the World")
m4 = Movie.new("Hook")
m5 = Movie.new("Jet Li's Hero")

#Viewer instances
v1 = Viewer.new("BananaKitten69")
v2 = Viewer.new("UrDadSidePiece")
v3 = Viewer.new("HotCheetoLover123")
v4 = Viewer.new("ReCodeMahLife")
v5 = Viewer.new("Renkenjutsushi")

#Review instances
r1 = Review.new(v1, m1, 5)
r2 = Review.new(v2, m2, 4)
r3 = Review.new(v3, m3, 3)
r4 = Review.new(v4, m4, 2)
r5 = Review.new(v5, m5, 1)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
