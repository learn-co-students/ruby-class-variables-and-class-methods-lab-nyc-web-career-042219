class Song
  @@count = 0
  @@artists = []
  @@genres = []

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
    genres = @@genres
    genres.each_with_object({}) { |genre, hash| hash[genre].nil? ? hash[genre] = 1 : hash[genre] += 1 }
  end

  def self.artist_count
    artists = @@artists
    artists.each_with_object({}) { |artist, hash| hash[artist].nil? ? hash[artist] = 1 : hash[artist] += 1 }
  end

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
end