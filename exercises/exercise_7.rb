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

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :at_least_men_or_women

  def at_least_men_or_women
    errors.add(:base, "The new store must sell at least men or women apparel") unless mens_apparel == true || womens_apparel == true
  end
end

puts "Enter a store name: "
name = gets.chomp
newStore = Store.create(name: name)
puts newStore.errors.count
newStore.errors.full_messages.each do |message| 
  puts message
end