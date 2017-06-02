require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class TestRooms < MiniTest::Test

    def setup()
      @room1 = Rooms.new("Room1")
      @room2 = Rooms.new("Room2")
      @guest1 = Guests.new("Pedro")
      @guest2 = Guests.new("Liliana")
      @song1 = Songs.new("Nirvana", "Lithium")
      @song2 = Songs.new("Pearl Jam", "Daughter")
    end

    def test_guest_count()
      assert_equal(0, @room1.guest_count())
    end

    def test_songs_count()
      assert_equal(0, @room1.song_count())
    end

    def test_add_guest_to_room1
      @room1.add_guest_to_room(@guest1)
      assert_equal(1, @room1.guest_count())
    end

    def test_check_out_guest_from_room1
      @room1.check_out_guest_from_room(@guest1)
      assert_equal(0, @room1.guest_count())
    end

    def test_add_song_to_room1
      @room1.add_song_to_room(@song1)
      assert_equal(1, @room1.song_count())
    end

  end