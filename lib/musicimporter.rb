require 'pry'
class MusicImporter
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*")
    # returns filenames
    # binding.pry
  end

  def import
    # creates a new song instance for each files
  end
end
