class Movie < Product
  attr_reader :director, :year, :title

  def initialize(params)
    super

    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "Фильм #{@title}, #{@year}, режиссер #{@director}, #{super}"
  end
end
