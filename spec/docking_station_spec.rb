require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do
   expect(subject).to respond_to :release_bike
  end


it "respond to dock" do
  expect(subject).to respond_to :dock
end

it "release a bike" do
  station = DockingStation.new
  expect(station.release_bike).to eq bike 
end

end
