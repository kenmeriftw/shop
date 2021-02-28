class Movie < Product
  attr_accessor :director, :year, :title

  def initialize(params)
    super

    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "Фильм #{@title}, #{@year}, режиссер #{@director}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @director = params[:director] if params[:director]
    @year = params[:year] if params[:year]
  end
end
