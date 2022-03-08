require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Store.create(
#   has_many :employees
# )
# Employee.create(
#   belongs_to :store
# )
Store.has_many :employees
Employee.belongs_to :store
puts "Stores are #{@store1.name}, #{@store2.name}, #{@store3.name}"
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: 'Mikiyoshi', last_name: 'Kokura', hourly_rate: 25)
@store3.employees.create(first_name: 'Peter', last_name: 'Bisson', hourly_rate: 150)
puts "Stores are #{@store1.employees}, #{@store2.employees}, #{@store3.employees}"