require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

leon = Movie.new(title: 'Леон', year: 1995, director: 'Люк Бессон', price: 120000, amount: 3)
leon.year = 1994
leon.update(amount: 5)

idiot = Book.new(title: 'Идиот', genre: 'роман', amount: 10)
idiot.author = 'Федька Достоевский'
idiot.update(author: 'Фёдор Достоевский', price: 1500)

puts leon
puts idiot
