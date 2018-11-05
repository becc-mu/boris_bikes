require 'bike'

describe Bike do

  it { is_expected.to respond_to :working? }
  
  it "report bike is broken" do
    bike = Bike.new
    bike.condition = "broken"
    expect(bike).not_to be_working
  end

end
