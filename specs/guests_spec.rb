require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class TestGuests < MiniTest::Test

  def setup
  @guest1 = Guests.new("Pedro")
  @guest2 = Guests.new("Liliana")
  end

end