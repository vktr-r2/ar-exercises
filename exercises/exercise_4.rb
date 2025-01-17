require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

=begin
### Exercise 4: Loading a subset of stores

1. Borrowing and modifying the code from Exercise one, create 3 more stores:

- Surrey (annual_revenue of 224000, carries women's apparel only)
- Whistler (annual_revenue of 1900000 carries men's apparel only)
- Yaletown (annual_revenue of 430000 carries men's and women's apparel)

2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
3. Loop through each of these stores and output their name and annual revenue on each line.
4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

=end


surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Use .where(query) method to create an object of objects that saves all mens apparel stores
@mens_stores = Store.where(mens_apparel: true)

# if @mens_stores.is_a?(Object)
# puts "Object is an object"
# else
#   puts "The object is not an object."
# end

# Use .each || method to puts store.name and store.annual_revenue for every store saved in the @mens_stores object
puts "Mens clothing stores:"
@mens_stores.each do |store|
  puts "Store: #{store.name}, Annual_rev: #{store.annual_revenue}"
end

puts "=========================="

# Use .where(query) method to create an object of objects that saves all womens stores selling less than 1mil.  Must use range when querying for annual_revenue
@womens_stores_under_1mil = Store.where(womens_apparel: true, annual_revenue: 0..999999)

# Use .each || method to puts store.name and store.annual_revenue for every store saved in the @womens_stores_under_1mil object
puts "Womens clothing stores selling less than 1mil"
@womens_stores_under_1mil.each do |store|
  puts "Store: #{store.name}, Annual_rev: #{store.annual_revenue}"
end


# use Class.find_by(query: ) to store Richmond store in instance variable
@store4 = Store.find_by(id: 4)

# use Class.find_by(query: ) to store Richmond store in instance variable
@store5 = Store.find_by(id: 5)
