require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
  whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: false, womens_apparel: false)
  yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
  
  @mens_stores = Store.where(mens_apparel: true)
  @mens_stores.each do |men_store| 
    puts "Store #{men_store.name} has anual revenue of #{men_store.annual_revenue}"
  end

  @womens_stores = Store.where(["womens_apparel = ? and annual_revenue < ?", true, 1000000])
  @womens_stores.each do |women_store| 
    puts "Store #{women_store.name} has anual revenue of #{women_store.annual_revenue}"
  end
end