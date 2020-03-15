
class Artist
  @@all = []
  attr_accessor :name, :songs, :artist
  def initialize (name)
    @name = name
    @songs = []
    save
  end
  def save
<<<<<<< HEAD
    @@all << self
=======
    @@all << self if !@@all.include?(name)
>>>>>>> b15af81d831ffde5479a5e6aa254a49e1a9352b5
  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
  end
  def songs
    @songs
  end
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  def self.find(name)
      @@all.find {|artist| artist.name == name}
    end

  def self.create(name)
    artist = self.new(name)
    artist
  end

  def print_songs()
     puts @songs.collect {|song| song.name}
=======
    if @@all.uniq(name)
      @@all.find {|artist| artist.name == name}
    else
      artist = self.new(name)
    end
  end
  def print_songs
    self.songs
    #Song.all.select {|song| song.artist == self}
>>>>>>> b15af81d831ffde5479a5e6aa254a49e1a9352b5
  end
end
