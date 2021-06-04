class Product
  attr_accessor :price, :amount

  def initialize(params)
    @price = params[:price].to_i
    @amount = params[:amount].to_i
  end

  def to_s
    "#{amount} copies left. Price: $#{@price}."
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end

  def self.from_file(file_path)
    raise NotImplementedError, 'is not implemented yet'
  end

  def in_stock?
    @amount.positive?
  end
end
