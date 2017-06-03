require('pry')

class Rooms

  attr_reader :room

  def initialize(room)
    @room = room
    @capacity = 1
    @guests = []
    @songs = []
    @fee = 50
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

  def add_guest_to_room_capacity(guest)  
    if guest_count <= @capacity
      @guests.push(guest)
    end
  end
 

  def check_out_guest_from_room(guest)
    return @guests.delete(guest)
  end

  def add_song_to_room(song)
    return @songs << song
  end

  def pay_fee_to_entry_room(money)
    return money - @fee
  end  

end