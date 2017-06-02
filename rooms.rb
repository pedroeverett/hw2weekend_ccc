class Rooms

  attr_reader :room

  def initialize(room)
    @room = room
    @guests = []
    @songs = []
  end

  def guest_count
    return @guests.length()
  end

  def song_count
    return @songs.length()
  end


  def add_guest_to_room(guest)
    return @guests << guest
  end

  def check_out_guest_from_room(guest)
    return @guests.delete(guest)
  end

  def add_song_to_room(song)
    return @songs << song
  end

end