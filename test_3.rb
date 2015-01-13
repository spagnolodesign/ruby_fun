##Class in Ruby

# The Song class
class Song
  attr_reader :name
  def initialize(name, artist, duration)
    @name = name.capitalize
    @type   = artist
	@duration = duration
  end

  def salute
    puts "Hello #{@name} your song during #{@duration}"
  end
end

# Create a new object
g = Song.new("Luca","Electro","230s")



