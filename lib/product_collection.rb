class ProductCollection
  PRODUCT_TYPES = {
    movie: {dir: 'movies', class: Movie},
    book: {dir: 'books', class: Book},
    cd: {dir: 'cds', class: CD}
  }

  def initialize(products = [])
    @products = products
  end

  def self.from_dir(path)
    products = []

    PRODUCT_TYPES.each do |type, hash|
      product_dir = hash[:dir]
      product_class = hash[:class]

      Dir[path + '/' + product_dir + '/*.txt'].each do |path|
        products << product_class.from_file(path)
      end
    end

    self.new(products)
  end

  def product_by_index(index)
    @products[index - 1]
  end

  def sort!(params)
    case params[:by]
    when :title
      @products.sort_by! { |product| product.to_s }
    when :price
      @products.sort_by! { |product| product.price }
    when :amount
      @products.sort_by! { |product| product.amount }
    end

    @products.reverse! if params[:order] == :asc

    self
  end

  def to_s
    @products.map.with_index(1) { |product, i| "#{i}. #{product}" }.
      join("\n")
  end

  def in_stock!(product)
    @products.delete(product) if product.amount == 0
  end
end
