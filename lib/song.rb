class Song
  attr_accessor :name, :artist, :genre

  # a class variable keeps track of the number of new songs that are created from the Song class
  @@count = 0
  @@genres = []
  @@artists = []

  # increment the @@count of songs
  def intialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  # a class method returns the total number of songs created
  def self.count
    @@count
  end

  # a class method returns an array of all of the genres of existing songs
  def self.genres
    @@genres.uniq
  end

  # a class method that returns a hash in which the keys are the names of each genre
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ? genre_count[genre] +=1 : 1
    end
  end

  # a class method that returns an array of all of the artists of the existing songs
  def self.artists
    @@artists.uniq
  end

end
