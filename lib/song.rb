require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist
    #binding.pry
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
    @@genres.each do |e|
      if @@genre_count[e] == nil
        @@genre_count[e] = 1
      else
        @@genre_count[e] += 1
      end
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |e|
      if @@artist_count[e] == nil
        @@artist_count[e] = 1
      else
        @@artist_count[e] += 1
      end
    end
    @@artist_count
  end
end