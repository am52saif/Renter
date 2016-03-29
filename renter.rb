# must be baller and either furnished or rent cheaper than 2100
def rent?(furnished, rent, baller)
  # if baller && furnished || rent < 2100
  #   return true
  # else
  #   return false
  # end
  (baller && (furnished || rent < 2100)) ? true : false
end

###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###

puts rent?(false,2200,false) --> False
puts rent?(false,2300,true) --> False
puts rent?(false,2000,false) --> False
puts rent?(false,1900,true) --> True
puts rent?(true,2500,false) --> False
puts rent?(true,2600,true) --> True
puts rent?(true,2099,false) --> False
puts rent?(true,2098,true) --> True
