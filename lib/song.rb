require 'Pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []
  #@@genre_count = {}


  attr_accessor :song, :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist

    # @@genres.map do |song_genre|
    #   if @@genre_count[song_genre] = 1
    #     @@genre_count[song_genre] += 1
    #   else
    #     @@genre_count[genre] = 1
    #   end
    #   #binding.pry
    # end

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
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
    song_count = {}
    @@artists.map do |song|
      @genre_count = {}
      if song_count[song]
        song_count[song] += 1
      else
        song_count[song] = 1
      end
    end
    song_count
  end
  
end
