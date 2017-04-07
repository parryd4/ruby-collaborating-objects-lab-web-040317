require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_data = filename.chomp(".mp3").split(" - ")
    song = self.new(song_data[1])
    # binding.pry
     song.artist_name(song_data[0])
    # song.artist_name(song.artist)
    song
  end

  def artist_name(string)
    artist_object = Artist.find_or_create_by_name(string)
    self.artist = artist_object
    artist_object.add_song(self)
  end
end
