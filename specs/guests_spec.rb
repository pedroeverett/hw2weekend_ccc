require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Pedro", 300, @song1)
    @guest2 = Guests.new("Liliana", 200, @song2)
    @song1 = Songs.new("Nirvana", "Lithium")
    @song2 = Songs.new("Pearl Jam", "Daughter")
  end

end