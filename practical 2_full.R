#Make a product.csv file and perform data manipulation: product(prodID, prodName, category, price, qty) 

# Create a data frame for product details
product_data <- data.frame(
  prodID = 1:10,
  prodName = c("Laptop", "Phone", "TV", "Table", "Chair", "Mouse", "Keyboard", 
               "Monitor", "Sofa", "Bed"),
  category = c("Electronics", "Electronics", "Electronics", "Furniture", 
               "Furniture", "Accessories", "Accessories", "Electronics", 
               "Furniture", "Furniture"),
  price = c(50000, 30000, 40000, 5000, 1500, 800, 1000, 7000, 25000, 15000),
  qty = c(50, 150, 100, 200, 300, 100, 120, 90, 110, 80)
)

# Write the data frame to a CSV file
write.csv(product_data, "product.csv", row.names = FALSE)

# Confirm the data by displaying it
print(product_data)


#(i) Display columns except 'price' and 'qty' 

product_data_except_price_qty <- select(product_data, -price, -qty)
print(product_data_except_price_qty)


##(ii) Display columns that ends with 'y' 

product_data_ends_with_y <- select(product_data, ends_with('y'))
print(product_data_ends_with_y)


#(iii) Display columns that starts with 'c' 

product_data_starts_with_c <- select(product_data, starts_with('c'))
print(product_data_starts_with_c)


#(iv) Display qty only if its more than 100 

product_data_qty_more_than_100 <- filter(product_data, qty > 100)
print(product_data_qty_more_than_100)


#(v) Arrange the qty in ascending order 


product_data_arranged_qty <- arrange(product_data, qty)
print(product_data_arranged_qty)


#(vi) Display first 6 rows 

first_six_rows <- head(product_data, 6)
print(first_six_rows)

#(vii) Display last 6 rows 

last_six_rows <- tail(product_data, 6)
print(last_six_rows)


#(viii)Rename column 'qty' to 'prodQty' 

product_renamed <- rename(product_data, prodQty = qty)
print(product_renamed)


#(ix) Calculate total cost using mutate 
product_data_mutate <- mutate(product_data, totalCost = price * qty)
print(product_data_mutate)


#(x) Calculate total cost using Transmute 

product_data_transmute <- transmute(product_data, totalCost = price * qty)
print(product_data_transmute)


#(xi) Display all rows except 4 and 5 

product_data_except_4_5 <- product_data[-c(4, 5), ]
print(product_data_except_4_5)

#(xii) Remove duplicate row 

# New row to be added
new_row <- data.frame(
  prodID = 6, 
  prodName = "Mouse", 
  category = "Accessories", 
  price = 800, 
  qty = 100
)
# Insert the new row at the 11th position
product_data_with_new_row <- rbind(product_data[1:10, ],  # First 10 rows,    
  # New row at 11th position
  product_data[11:nrow(product_data), ]  # Remaining rows
)

# View the updated dataset
print(product_data_with_new_row)


product_data_no_duplicates <- distinct(product_data_with_new_row)
print(product_data_no_duplicates)

#(xiii)Display any random 4 records 

set.seed(123)  # Set seed for reproducibility
random_4_records <- sample_n(product_data, 4)
print(random_4_records)


#(xiv) Display random 50% of the given dataset

set.seed(123)  # Set seed for reproducibility
random_50_percent <- sample_frac(product_data, 0.5)
print(random_50_percent)
