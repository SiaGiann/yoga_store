shopping_cart = []

@products = [
  {number: 1, name: "t-shirt", price: 20},
  {number: 2, name: "Yoga guide", price: 25},
  {number: 3, name: "Yoga leggings", price: 30},
  {number: 4, name: "Meditation cushion", price: 40}
]

puts "These are our products:\n"

  @products.each do |product|
    puts "Product No#{product[:number]}-#{product[:name]}-#{product[:price]} euro"
    puts "**" * 20
  end

  
def select_product
  puts "Please select number!"
  select = gets.to_i
end

def add_to_cart(number)

end
