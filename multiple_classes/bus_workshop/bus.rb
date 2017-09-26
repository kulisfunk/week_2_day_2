class Bus
  def initialize(route_number, destination, passengers)
    @route = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Brum Brum"
  end

  def passenger_count()
    return @passengers.length
  end

  def bus_pick_up(passenger)
    @passengers << passenger
    return @passengers
  end

  def bus_drop_off(passenger)
    @passengers.delete(passenger)
    return @passengers
  end

  def empty_bus()
    @passengers = []
    return
  end



end
