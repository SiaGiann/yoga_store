shopping_cart = []

@products = [
  {number: 1, name: "t-shirt", price: 20},
  {number: 2, name: "Yoga guide", price: 25},
  {number: 3, name: "Yoga leggings", price: 30},
  {number: 4, name: "Meditation cushion", price: 40}
]

puts "These are our products:\n"

#This one doesnt work!!!!!!
  # @products.each do |product|
  #   puts "Product No#{product[:num]}-#{product[:name]}-#{product[:price] euro}"
  #   puts "**" * 20
  # end

  @products.each do |product|
    puts "Reference nr.: #{product[:number]}"
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]} EUR"
    puts "*" *30
  end

def select_product
  puts "Please select number!"
  select = gets.to_i
end

def add_to_cart(number)

end
