class Player

  attr_reader :name, :hp

  INITIAL_HP = 100


  def initialize(name, hp = INITIAL_HP)
    @name = name
    @hp = hp
  end



  def damaged
    @hp -= 10
  end

end
