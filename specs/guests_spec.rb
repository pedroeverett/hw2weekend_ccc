require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class TestGuests < MiniTest::Test

  def setup
  @guest1 = Guests.new("Pedro", 300)
  @guest2 = Guests.new("Liliana", 200)
  end

end