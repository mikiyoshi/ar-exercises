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
puts 'Enter Store Name'
input_store_name = gets.chomp
puts input_store_name

response = Store.create(
  name: input_store_name
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)