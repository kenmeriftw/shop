require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

leon = Movie.new(price: 290, amount: 1)

puts "Фильм Леони стоит #{leon.price} рублей"