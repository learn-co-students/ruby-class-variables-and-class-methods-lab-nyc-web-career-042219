require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  #  binding.pry
  end

  def self.count
    @@count
  end

  def self.genres
    genre_array=[]
    @@genres.each do |genre|
      if genre_array.include?(genre) == false
        genre_array << genre
      end
    end
    genre_array
  end

  def self.artists
    artist_array=[]
    @@artists.each do |artist|
      if artist_array.include?(artist) == false
        artist_array << artist
      end
    end
    artist_array
  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |genre|
      if genre_hash[genre] == NIL
        genre_hash[genre]=1
      else
        genre_hash[genre] = genre_hash[genre] + 1
      end
      # end

    end
  #    binding.pry
    genre_hash
  end
  def self.artist_count
    artist_hash = {}

    @@artists.each do |artist|
      if artist_hash[artist].nil?
        artist_hash[artist]=1
      else
        artist_hash[artist] = artist_hash[artist] + 1
      end
      # end

    end
  #    binding.pry
    artist_hash
  end






end
