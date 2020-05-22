class Genre
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    new_genre = Genre.new(name)
    @@all << new_genre
    new_genre
  end

end
