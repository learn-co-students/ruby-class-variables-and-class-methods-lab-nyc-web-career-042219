class Song

  @@count = 1
  @@artists= []
  @@genres = []


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artist
    @@artist
  end

  def self.genre
    @@genres
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    (@@genres.uniq).each do |genre|
      amount = @@genres.count(genre)
      genre_count[genre] = amount
    end
    genre_count
  end

    def self.artist_count
      artist_count = {}
      (@@artists.uniq).each do |artist|
      amount = @@artists.count(artist)
      artist_count[artist] = amount
      end
      artist_count
    end

end
