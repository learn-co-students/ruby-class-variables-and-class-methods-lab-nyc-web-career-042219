class Song

  @@song = []
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_reader :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
    # if it is the first count, set value 1
    # if key already exists += 1
    @@genre_count[genre].nil? ? @@genre_count[genre] = 1 : @@genre_count[genre] += 1
  end

  def self.song
    @@song
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
  # returns an array of unique genres collected with each new instance of song

  def self.genre_count
    @@genre_count
  end
  # with each new initialize, set key to its genre and make a count to add to
  # keys will need to not overwrite but actually accumulate values with each new

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist].nil?
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
    end
    artist_count
  end
# another way

end
