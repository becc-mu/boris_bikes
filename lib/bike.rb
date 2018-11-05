class Bike
  attr_accessor :condition

  def initialize
    @condition = "working"
  end

  def working?
    @condition == "working"
  end



end
