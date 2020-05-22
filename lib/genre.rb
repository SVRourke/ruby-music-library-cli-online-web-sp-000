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
    @@all << self
  end

  def self.create(name)
    ng = Genre.new(name)
    ng.save
    ng
  end

end