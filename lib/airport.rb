require_relative 'plane'
class Airport

def initialize(capacity)
  @capacity = capacity
  @planes = []

end

def land(plane)
  raise 'Cannot land a plane. Airport is full.' if @planes.length >= @capacity
  @planes << plane
end


def take_off(plane)
end

end
