class DockingStation
  def initialize(init)
    @docking_station = init
  end
  def station 
    @docking_station = release_bike
  end
end
