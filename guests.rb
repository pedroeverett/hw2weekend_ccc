class Guests

  attr_reader :name, :money, :song

  def initialize(name, money, song)
    @name = name
    @money = money
    @song = song
  end

end