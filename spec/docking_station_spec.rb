require 'docking_station'
require 'pry'

describe DockingStation do
  it "responds to release_bike" do
   expect(subject).to respond_to :release_bike
  end


it "respond to dock" do
  expect(subject).to respond_to :dock
end


it "releases working bikes" do
  subject.dock(Bike.new)
  bike = subject.release_bike
  expect(bike).to be_working
end

it "allow to dock a bike" do
  station = DockingStation.new
  bike = Bike.new
  expect(station.dock(bike)).to eq "#{bike} docked"
end

it "returns docks bikes" do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bikes).to include bike
end
 it "raise an error when station empty" do
   expect { subject.release_bike }.to raise_error("Station is empty")
 end
it "raise an error when station if full" do
  station = DockingStation.new(capacity=35)
  #binding.pry
  35.times { station.dock Bike.new }
  #binding.pry
  expect { station.dock(Bike.new) }.to raise_error("Station is full")
end

it "set capacity" do
  station = DockingStation.new(50)
  expect(station.capacity).to eq 50
end

it "has defalult capacity" do
  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

end
