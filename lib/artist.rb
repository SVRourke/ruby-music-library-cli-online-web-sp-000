require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
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
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
      @songs << song
    end
  end

  def genres
    @songs.collect {|song| song.genre}
    # binding.pry
  end

end
