require_relative 'bike'

class DockingStation
  def release_bike
    fail 'no bikes available' unless @bikes
    @bikes
  end
  def dock(bike)
    fail 'Docking station full' if @bikes
    @bikes = bike
  end

  def initialize
    @bikes = []
  end

  def release_bike
   fail 'no bikes available' if @bikes.empty?
   @bikes.pop
 end

 def dock(bike)
   fail 'Docking station full' if @bikes.count >= 20
   @bikes << bike
 end

  attr_reader :bike

end
