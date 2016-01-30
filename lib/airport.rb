require_relative 'plane'
class Airport

def initialize(capacity)
  @capacity = capacity
@num_of_planes_landed = 0
end

def land(plane)
  raise 'Cannot land a plane. Airport is full.' if @num_of_planes_landed >= @capacity
  @num_of_planes_landed += 1
end


def take_off(plane)
end

end
