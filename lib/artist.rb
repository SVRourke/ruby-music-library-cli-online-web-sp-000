require 'pry'
require_relative "./genre.rb"
require_relative "./song.rb"
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
      song.artist= self
      @songs << song
      puts "song added #{@songs}"
    end
  end

  def genres
    gs = @songs.map {|song| song.genre}
  end

  def sub
    puts @songs
  end
end

a = Artist.new("Artist A")
b = Artist.new("Artist b")

grunge = Genre.new("Genre A")
rock = Genre.new("Genre B")

c = Song.new("SONG 1", a, grunge)
d = Song.new("SONG 2", a, rock)



# expect(artist.genres).to include(genre)
# expect(artist.genres).to include(other_genre)
# expect(artist.genres.size).to be(2)
