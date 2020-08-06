require 'docking_station'
describe DockingStation do
it 'expecting docking station to respond to method "release bike"' do
  expect(DockingStation.new).to respond_to(:release_bike)
  end
it 'expects "true" if the bike is working' do
  expect(DockingStation.new.release_bike.working?).to eq true
  end
end




 # Add a test to your spec file that expects DockingStation instances to respond_to the method release_bike
