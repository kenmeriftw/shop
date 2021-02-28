require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

movie1 = Movie.from_file('./data/movies/01.txt')
movie2 = Movie.from_file('./data/movies/02.txt')
book1 = Book.from_file('./data/books/01.txt')

puts movie1
puts movie2
puts book1
