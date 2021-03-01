require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/cd'
require_relative 'lib/cart'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

cart = Cart.new
list_of_goods = collection.to_a

loop do
  puts "What would you like to buy?"

  list_of_goods.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
  puts '0. Press to order \n'
  puts
  print('> ')

  choice = gets.to_i
  break if choice.zero?

  selected_product = collection.to_a[choice - 1]

  cart.add(selected_product)

  if selected_product.in_stock?
    puts "You have chosen #{selected_product}"
  else
    list_of_goods.delete(selected_product)
  end

  puts "Cart subtotal is $#{cart.total}. \n\n"
end

if cart.empty?
  puts 'Your cart is empty. Nothing to order. See you next time.'
else
  puts "Thanks for shopping, let's go to order form."
  puts 'You have ordered:'
  puts cart.products
  puts "Order total is $#{cart.total}."
end

