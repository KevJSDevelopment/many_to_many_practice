require_relative '../config/environment.rb'
require 'pry'

create your variables and/or write any tests here

james = Tourist.new("James")
bob = Tourist.new("Bob")

liberty = Landmark.new("Statue_of_liberty", "New York")
eiffel = Landmark.new("Eiffel Tower", "Paris")

trip1 = Trip.new(james, eiffel)
trip2 = Trip.new(bob, eiffel)
trip3 = Trip.new(james, liberty)

puts "Does tourist.all work?"
p Tourist.all == [james, bob]
