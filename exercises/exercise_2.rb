require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  # store1 = Store.find_by(:name => 'Dano')
  @store3 = Store.find_by(id: 3)
  @store3.destroy
  puts Store.count
end
