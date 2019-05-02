require_relative 'bike'

class DockingStation
  def initialize
    @bike_collection = []
  end
  def release_bike
    fail "No bikes available" if @bike_collection.empty?
    @bike_collection.pop
  end

  def dock(bike)
    fail "Dock is full" if @bike_collection.count >= 20
    @bike_collection << bike
    bike
  end
end
