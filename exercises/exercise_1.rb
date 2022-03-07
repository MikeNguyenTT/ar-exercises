require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
@store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
@store3 = Store.create(name: "Gastown", annual_revenue: 190000 , mens_apparel: true, womens_apparel: false)
puts Store.count

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Le Minh", last_name: "Nguyen", hourly_rate: 40)

@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 30)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 25)

@store3.employees.create(first_name: "Alice", last_name: "Doe", hourly_rate: 100)
@store3.employees.create(first_name: "Bryan", last_name: "Doe", hourly_rate: 150)