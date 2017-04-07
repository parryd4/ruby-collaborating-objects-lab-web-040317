class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  def songs
    @songs
  end
  def save
    @@all << self
  end

  def self.all
    @@all
  end
  def self.find_or_create_by_name(new_name)
    return Artist.new(new_name) if @@all.size == 0

    @@all.each do |artist|
      return artist if artist.name == new_name
    end

      Artist.new(new_name)
    # @@all.each.with_index do |artist, i|
    #   puts "OMG #{@@all[i]} is #{@@all[i].name}. I use artist for Object #{artist}. Lets try artist.name #{artist.name}"
    #   if artist.name == new_name
    #     return @@all[i]
    #   else
    #     return Artist.new(new_name)
    #   end
    # end
  end
  def add_song(song)
    @songs << song
  end
  def print_songs
    @songs.each {|title| puts title.name}
  end
end
