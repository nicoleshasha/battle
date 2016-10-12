class Player

attr_reader :name
attr_accessor :hp
DEFAULT_HP = 100


  def initialize(player_name)
    @name = player_name
    @hp = DEFAULT_HP
  end

  def receive_damage
    @hp-=10
  end

end
