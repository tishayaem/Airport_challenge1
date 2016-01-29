require 'airport'
describe 'Airport' do
# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport and confirm that it has landed

    it 'instruct plane to land at an airport and confirm that it has landed' do
      airport = Airport.new
      plane = Plane.new
      expect {airport.land(plane)}.not_to raise_error
    end
    it 'instructs plane to take off' do
      airport = Airport.new
      plane = Plane.new
      airport.take_off(plane)

    end

    end
