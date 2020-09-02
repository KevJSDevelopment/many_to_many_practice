require_relative '../app/models/tourist.rb'
require_relative '../app/models/trip.rb'
require_relative '../app/models/landmark.rb'
require 'pry'

james = Tourist.new("James")
bob = Tourist.new("Bob")
george = Tourist.new("George")

liberty = Landmark.new("Statue_of_liberty", "New_York")
eiffel = Landmark.new("Eiffel Tower", "Paris")

trip1 = Trip.new(james, eiffel)
trip2 = Trip.new(bob, eiffel)
trip3 = Trip.new(james, liberty)

puts "Does james.trips work?"
p james.trips == [trip1, trip3]

puts "Does bob.landmarks work?"
p bob.landmarks == [eiffel]

puts "Does george.visit_landmark(liberty) work?"
trip4 = george.visit_landmark(liberty)
p george.landmarks.include?(liberty)

puts "Does george.never_visited work?"
p george.never_visited == [eiffel]

puts "Does liberty.trips work?"
p liberty.trips == [trip3, trip4]

puts "Does liberty.tourists work?"
p liberty.tourists == [james, george]

puts "Does Landmark.find_by_city("'New_York'") work?"
p Landmark.find_by_city("New_York") == [liberty]

binding.pry
