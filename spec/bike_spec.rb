require "docking_station"
describe Bike do
  it "If bike responds to method working" do
    expect(Bike.new).to respond_to(:working?)

  end
end
