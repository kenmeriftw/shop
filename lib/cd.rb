class CD < Product
  attr_accessor :album, :artist, :genre, :year

  def initialize(params)
    super

    @album = params[:album]
    @artist = params[:artist]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "#{@album}, artist: #{@artist}, genre: #{genre}, released in #{year}. #{super}"
  end

  def update(params)
    super

    @album = params[:album] if params[:album]
    @artist = params[:artist] if params[:artist]
    @genre = params[:genre] if params[:genre]
    @year = params[:year] if params[:year]
  end

  def self.from_file(file_path)
    cds_data = File.readlines(file_path).map { |line| line.chomp }

    self.new(
      album: cds_data[0],
      artist: cds_data[1],
      genre: cds_data[2],
      year: cds_data[3],
      price: cds_data[4],
      amount: cds_data[5]
    )
  end
end
