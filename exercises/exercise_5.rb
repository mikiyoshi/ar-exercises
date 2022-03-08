require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@entire_company = Store.sum(:annual_revenue)
@average_annual_revenue = @entire_company / Store.count

puts "Entire Company: #{@entire_company}"
puts "Average Annual Revenue for all stores: #{@average_annual_revenue}"

# hash
# User.where(‘kind = 1’)
# User.where(‘kind = ?’, 1)
@stores_1m_count = Store.where("annual_revenue >= ?", 1000000).count

# def join_two(a,b)
#   return a.to_s + b.to_s
# end
# join_two("hello","world")
# join_two("hello",1)
# join_two("test",1.111)
# join_two(100,1.1)
# "helloworld"
# "hello1"
# "test1.111"
# "1001.1"
# 
# without .to_s
# puts "hello"+1
# Traceback (most recent call last):
# .......
# TypeError (no implicit conversion of Integer into String)
puts @stores_1m_count.to_s