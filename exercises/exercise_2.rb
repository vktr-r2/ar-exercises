require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

=begin
1. Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
2. Load the second store from the database and assign it to `@store2`.
3. Update the first store (`@store1`) instance in the database. (Change its name or something.)

=end

# use Class.find_by(query: ) to store Burnaby store in instance variable
@store1 = Store.find_by(id: 1)

# use Class.find_by(query: ) to store Richmond store in instance variable
@store2 = Store.find_by(id: 2)

# use instance_variable.update(query: ) to update the name of @store1
@store1.update(name: "Kelona")
