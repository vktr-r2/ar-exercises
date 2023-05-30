require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

=begin

### Exercise 3: Delete the third store

1. Load the third store (into `@store3`) as you did the other two before.
2. Using Active Record's `destroy` method, delete the store from the database.
3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)

=end

# use Class.find_by(query: ) to store Burnaby store in instance variable
@store3 = Store.find_by(id: 3)

# use instance_var.destroy to destroy record from table
@store3.destroy

# store Store.count value in variable and then puts using 
store_count = Store.count
puts "Stores: #{store_count}" 