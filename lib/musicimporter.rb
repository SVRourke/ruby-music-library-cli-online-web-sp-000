require 'pry'
class MusicImporter
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    a = Dir.glob("#{@path}/*").map do |i|
      i.gsub("#{@path}\/", "")
    end
    # returns filenames
    binding.pry
  end

  def import
    # creates a new song instance for each files
  end
end
