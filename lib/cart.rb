class Cart
  attr_accessor :products, :total

  def initialize
    @products = []
    @total = 0
  end

  def add(product)
    @products << product
    @total += product.price.to_i

    if product.in_stock?
      product.amount -= 1
    else
      puts 'This product if out of order. Please choose another one.'
    end

  end

  def empty?
    @products.empty?
  end

  def products
    @products
  end

  def total
    @total
  end
end
