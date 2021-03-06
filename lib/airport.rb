require_relative 'plane'
class Airport

def initialize(capacity)
  @capacity = capacity
  @planes = []

end

def land(plane)
  raise 'Cannot land a plane. Airport is full.' if full?
raise 'Cannot land plane. Weather is stormy.' if stormy?
  @planes << plane
end


def take_off(plane)
raise 'Cannot take off plane. Weather is stormy.' if stormy?
end

private

def full?
@planes.length >= @capacity
end

def stormy?
  Weather.stormy?
end

def at_airport?(plane)
    planes.include?(plane)
  end

  def add_plane(plane)
    planes << plane
  end

  def remove_plane(plane)
    planes.pop
  end
end



end
