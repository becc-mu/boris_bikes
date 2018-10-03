require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do
   expect(subject).to respond_to :release_bike
  end


it "respond to dock" do
  expect(subject).to respond_to :dock
end


it "releases working bikes" do
  bike = subject.release_bike
  expect(bike).to be_working
end

it "allow to dock a bike" do
  station = DockingStation.new
  bike = Bike.new
  expect(station.dock(bike)).to eq "#{bike} docked"
end

end
