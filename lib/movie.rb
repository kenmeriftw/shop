class Movie < Product
  attr_accessor :director, :year, :title

  def initialize(params)
    super

    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "#{@title} is a #{@year} film directed by #{@director}. #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @director = params[:director] if params[:director]
    @year = params[:year] if params[:year]
  end

  def self.from_file(file_path)
    Dir["#{file_path}"].
      map do |file_name|
      movies_data = File.readlines(file_name, chomp: true).to_a
      Movie.new(title: movies_data[0], director: movies_data[1],
                year: movies_data[2], price: movies_data[3],
                amount: movies_data[4])
    end
  end
end
