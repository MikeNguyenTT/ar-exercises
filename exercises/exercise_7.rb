require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Enter a store name: "
name = gets.chomp
newStore = Store.create(name: name)
puts newStore.errors.count
newStore.errors.full_messages.each do |message| 
  puts message
end