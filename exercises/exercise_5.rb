require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

=begin
### Exercise 5: Calculations

1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
2. On the next line, also output the average annual revenue for all stores.
3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

=end

# Save total_sales using .sum(:table_column) method
total_sales = Store.sum(:annual_revenue)
puts "Total sales for all stores: $#{total_sales}"

# Save store_count using Class.count method
store_count = Store.count

# Calculate avg_sales
avg_sales = total_sales / store_count
puts "Average sales per store: $#{avg_sales}"

# Save stores_over_1mil using .where("string_query_here") method
@stores_over_1mil = Store.where("annual_revenue > 1000000")

# Save stores_over_1mil_count using Class.count method
stores_over_1mil_count = @stores_over_1mil.count
puts "Number of stores with over 1mil sales: #{stores_over_1mil_count}"