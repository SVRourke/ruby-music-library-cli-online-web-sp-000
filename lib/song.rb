class Song
  attr_accessor :name, :artist
  # attr_reader
  @@all = Array.new

  def initialize(name, artist=nil)
    @name = name
    if artist != nil
      self.artist= artist
    # @artist = artist
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    new_song = Song.new(name)
    new_song.save
    new_song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
end
