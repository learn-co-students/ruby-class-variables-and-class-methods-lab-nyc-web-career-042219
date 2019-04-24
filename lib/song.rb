# require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    h = Hash.new(0)
    @@genres.each {|value| h[value] +=1}
    h
  end

  def self.artist_count
    h = Hash.new(0)
    @@artists.each {|value| h[value] +=1}
    h
  end

end
