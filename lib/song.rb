<<<<<<< HEAD
require 'pry'
class Song
  attr_accessor :name, :genra, :artist
=======
class Song
  attr_accessor :artist_name, :name, :genra, :artist
>>>>>>> b15af81d831ffde5479a5e6aa254a49e1a9352b5
  @@all = []
  def initialize (name)
    @name = name
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(file)
<<<<<<< HEAD
    artist = file.split(" - ")[0]
    name = file.split(" - ")[1]
    song = Song.new(name)
    song.artist_name = artist
    song
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
=======
    parse=[]
    parse = file.split(/" - "/)
    artist= parse[0]
    name = parse[1]
    @genra = parse[2]
    song = self.new(name)
    song.artist_name = artist
    song
  end
>>>>>>> b15af81d831ffde5479a5e6aa254a49e1a9352b5
end
