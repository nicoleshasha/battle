class Player

attr_reader :name
attr_accessor :hp

  def initialize(player_name)
    @name = player_name
    @hp = 100
  end

end
