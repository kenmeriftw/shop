class Movie < Product
  attr_accessor :director, :year, :title

  def initialize(params)
    super

    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "#{@title}, #{@year}, director #{@director}. #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @director = params[:director] if params[:director]
    @year = params[:year] if params[:year]
  end

  def self.from_file(file_path)
    movies_data = File.readlines(file_path).map { |line| line.chomp }

    self.new(
      title: movies_data[0],
      director: movies_data[1],
      year: movies_data[2],
      price: movies_data[3],
      amount: movies_data[4]
    )
  end
end
