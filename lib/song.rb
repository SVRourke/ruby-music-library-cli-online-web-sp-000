class Song
  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end
end
