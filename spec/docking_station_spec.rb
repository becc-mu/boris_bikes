require "docking_station"

describe "DockingStation" do
  it "responds to release_bike" do
   expect(subject).respond_to :release_bike
  end
end
describe "release_bike" do
  it "responds to release_bike" do
   expect(release_bike).respond_to :bike
  end
end

describe "bike" do
  it "responds to release_bike" do
   expect(bike).respond_to :working?
  end
end
