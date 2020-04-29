# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 ="man"
m2 ="pan"

v1="yaya"
v2= "baya"

r1= (v1,m1,5)
r2 =(v2,m2,10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
