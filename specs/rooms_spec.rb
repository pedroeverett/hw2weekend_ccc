require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class TestRooms < MiniTest::Test

    def setup()
      @room1 = Rooms.new("Room1")
      @room2 = Rooms.new("Room2")
      @guest1 = Guests.new("Pedro", 300, @song1)
      @guest2 = Guests.new("Liliana", 200, @song2)
      @song1 = Songs.new("Nirvana", "Lithium")
      @song2 = Songs.new("Pearl Jam", "Daughter")
      @guests = [@guest1, @guest2]
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

    def test_add_guest_to_room1_whith_capacity
      @room1.add_guest_to_room_capacity(@guest1)
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

    def test_pay_fee_to_entry_room
      pay = @room1.pay_fee_to_entry_room(@guest1.money)
      assert_equal(250, pay)
    end

    def test_guest_favourit_song
      @room1.add_song_to_room(@song1)
      favourite_song = @room1.guest_favourite_song(@song1)
      assert_equal("Whoo!", favourite_song)
     
    end

  end