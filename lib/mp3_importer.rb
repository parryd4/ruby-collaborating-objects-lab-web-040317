require 'pry'

class MP3Importer
  attr_accessor :path
  @file_list = []

  def initialize(path)
    @path = path
    @home = Dir.pwd
  end

  def files
#    binding.pry
#    Dir.chdir(@home)
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3") #.collect{|filename| filename.chomp(".mp3")}
    Dir.chdir(@home)
    @files
  end

  def import ## play below
    self.files.each{ |filename| Song.new_by_filename(filename)
    }
  end
end

# test_music_path = "./db/mp3s"
# music_importer = MP3Importer.new(test_music_path)
# puts music_importer.files.size
