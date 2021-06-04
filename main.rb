require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/cd'
require_relative 'lib/cart'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir("#{File.dirname(__FILE__)}/data")

cart = Cart.new

loop do
  puts 'What would you like to buy?'
  puts collection
  puts '0. Press \'0\' to order'
  puts
  print('> ')

  user_choice = STDIN.gets.to_i

  break if user_choice.zero?

  selected_product = collection.product_by_index(user_choice)

  cart.add(selected_product)
  puts "You have chosen #{selected_product}"
  collection.in_stock!(selected_product)

  puts "Cart subtotal is $#{cart.total}."
  puts
end

if cart.empty?
  puts 'Your cart is empty. Nothing to order. See you next time.'
else
  puts "Thanks for shopping, let's go to order form."
  puts 'You have ordered:'
  puts cart
  puts "Order total is $#{cart.total}."
end

