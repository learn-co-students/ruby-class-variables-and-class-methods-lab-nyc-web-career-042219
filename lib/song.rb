class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

    if @@genre_count[genre].nil?
      @@genre_count[genre] = 0
    end
    @@genre_count[genre] += 1

    if @@artist_count[artist].nil?
      @@artist_count[artist] = 0
    end
    @@artist_count[artist] += 1
    
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
