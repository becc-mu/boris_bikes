require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail("Station is empty") if empty?

    @bikes.pop

  end

  def dock(bike)
    fail("Station is full") if full?
    @bikes << bike
    "#{bike} docked"
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
