class Song
  attr_accessor :name
  attr_reader :artist, :genre
  # attr_reader
  @@all = Array.new

  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist != nil
      # puts "has artist"
      self.artist = artist
    end
    if genre != nil
      self.genre = genre
    end

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
    # puts "adding artist"
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    if genre.songs.include?(self) == false
      genre.songs << self
    end
  end

  def self.find_by_name(name)
    @@all.find {|song| song.name = name}
  end
end














