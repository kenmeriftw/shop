class Book < Product
  attr_accessor :title, :author, :genre

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "#{@title} is a #{@genre} by #{@author}. #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end

  def self.from_file(file_path)
    books_data = File.readlines(file_path).map { |line| line.chomp }

    self.new(
      title: books_data[0],
      genre: books_data[1],
      author: books_data[2],
      price: books_data[3],
      amount: books_data[4]
    )
  end
end
