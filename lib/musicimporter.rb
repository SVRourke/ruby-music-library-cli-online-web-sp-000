class MusicImporter
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[@path].select {|e| File.file?(e)}
    # returns filenames
  end

  def import
    # creates a new song instance for each files
  end
end
