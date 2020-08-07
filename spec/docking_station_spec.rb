require 'docking_station'
describe DockingStation do
  it 'expecting docking station to respond to method "release bike"' do
    bike = Bike.new
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'returns docked bikes' do
  	bike = Bike.new
  	subject.dock(bike)
  	expect(subject.bike).to eq bike
  end
    describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'expects "no bikes available" if docking station is empty' do
      expect { subject.release_bike }.to raise_error 'no bikes available'
    end
    describe '#dock' do
      it 'expect docking station to raise an error when full' do
       subject.dock(Bike.new)
       expect { subject.dock Bike.new }.to raise_error 'Docking station full'
     end
   end
 end
end




 # Add a test to your spec file that expects DockingStation instances to respond_to the method release_bike
