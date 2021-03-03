class Cart
  def initialize
    @products = []
  end

  def add(product)
    @products << product
    product.amount -= 1
  end

  def empty?
    @products.empty?
  end

  def total
    @products.sum(&:price)
  end

  def to_s
    @products.map.with_index(1) { |product, index| "#{index}. #{product}" }
      .join("\n")
  end
end
