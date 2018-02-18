@shopping_cart = []
@sum = 0

@products = [
  {number: 1, name: "t-shirt", price: 20},
  {number: 2, name: "Yoga guide", price: 25},
  {number: 3, name: "Yoga leggings", price: 30},
  {number: 4, name: "Meditation cushion", price: 40}
]
def display_products
  puts "These are our products:\n"

  @products.each do |product|
    puts "#{product[:number]}. #{product[:name]} (#{product[:price]} euro)"
    puts "**" * 20
  end
end

def select_product
  puts "Please select number!"
  select = gets.to_i
  selection = @products.select { |product| product[:number] == select }
  return selection[0]
end

def add_to_cart(product)
  @shopping_cart << product
  puts "Your shopping cart contains: #{@shopping_cart}"
end

def total_price(product)
  @sum = @sum + product[:price]
  puts "The total price of your basket is #{@sum} euro."
end

display_products

loop do
  puts "Do you want to continue shopping?(Y/N)"
  answer = gets.chomp.capitalize
  if answer == "N"
    puts "Bye!"
    break
  elsif answer == "Y"
    selection = select_product
    add_to_cart(selection)
    total_price(selection)
  else
    puts "Wrong choice, please choose Y or N."
  end
end
