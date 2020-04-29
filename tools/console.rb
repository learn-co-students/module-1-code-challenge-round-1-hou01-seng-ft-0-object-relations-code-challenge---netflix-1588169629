# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m_1 = Movie.new("Spiderman")
m_2 = Movie.new("The Green Mile")
m_3 = Movie.new("Deliverance")

v_1 = Viewer.new("Ally03")
v_2 = Viewer.new("Cole99")
v_3 = Viewer.new("DogL0ver")

r_1 = Review.new(v_1, m_1, 8)
r_2 = Review.new(v_1, m_2, 10)
r_3 = Review.new(v_1, m_2, 9)
r_4 = Review.new(v_2, m_2, 8)
r_4 = Review.new(v_3, m_2, 1)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
