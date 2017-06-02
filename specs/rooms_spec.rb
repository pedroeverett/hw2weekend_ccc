require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")

class TestRooms < MiniTest::Test

    def setup
      @room1 = Rooms.new("Room1")
      @room2 = Rooms.new("Room2")
    end


  end