<<<<<<< HEAD
require 'pry'
=======

>>>>>>> b15af81d831ffde5479a5e6aa254a49e1a9352b5
class MP3Importer
  attr_accessor :path, :file

  def initialize (path)
    @path = path
  end

  def files
    @file = Dir.glob("#{@path}/*.mp3").collect {|file| file.gsub("#{@path}/", "")}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
