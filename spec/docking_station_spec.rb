require 'docking_station'
describe DockingStation do
  it 'expecting docking station to respond to method "release bike"' do
    bike = Bike.new
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'expects "true" if the bike is working' do
    bike = Bike.new
    expect(DockingStation.new.release_bike.working?).to eq true
  end
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'returns docked bikes' do
  	bike = Bike.new
  	subject.dock(bike)
  	expect(subject.bike).to eq bike
  end
end




 # Add a test to your spec file that expects DockingStation instances to respond_to the method release_bike
