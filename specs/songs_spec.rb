require("minitest/autorun")
require("minitest/rg")
require_relative("../songs.rb")

class TestSongs < MiniTest::Test

  def setup
    @song1 = Songs.new("Nirvana", "Lithium")
    @song2 = Songs.new("Pearl Jam", "Daughter")
  end

end