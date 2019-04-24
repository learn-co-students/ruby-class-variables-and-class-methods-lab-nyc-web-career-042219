

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genres_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist

  
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
    genre_count = {}
   @@genres.map do |song_genre|
     if genre_count[song_genre]
       genre_count[song_genre] += 1
     else
       genre_count[song_genre] = 1
     end
   end
   genre_count

  end

  def self.artist_count
    artist_count = {}
   @@artists.map do |artist_genre|
     if artist_count[artist_genre]
       artist_count[artist_genre] += 1
     else
       artist_count[artist_genre] = 1
     end
   end
   artist_count

  end





end
