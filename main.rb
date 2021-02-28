require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

products << Movie.new(title: 'Леон', director: 'Люк Бессон', year: 1994, price: 990, amount: 5)

products << Movie.new(title: 'Дурак', director: 'Юрий Быков', year: 2014, price: 550, amount: 2)

products << Book.new(title: 'Идиот', author: 'Федор Достоевский', genre: 'Роман', price: 1500, amount: 10)

products.each { |product| puts product }
