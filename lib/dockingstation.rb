require_relative 'bike'

class DockingStation
  CAPACITY = 20
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    # Bike.new
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station is full' if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.length >= CAPACITY # returns automatically true or false
  end

  def empty?
    @bikes.empty?
  end

end
