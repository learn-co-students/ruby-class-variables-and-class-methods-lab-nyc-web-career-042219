require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name,artist,genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre = @@genres.uniq
    hash = {}
    until genre  == []
      hash[genre[0]] =  @@genres.select{|x| x == genre[0]}.length
      genre.delete_at(0)
    end
    return hash
  end
  def self.artist_count
    artist = @@artists.uniq
    hash = {}
    until artist  == []
      hash[artist[0]] =  @@artists.select{|x| x == artist[0]}.length
      artist.delete_at(0)
    end
    return hash
  end
end
