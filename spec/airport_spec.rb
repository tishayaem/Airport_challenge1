require 'airport'

 describe Airport do
    subject(:airport) {described_class.new(20, weather)}
    let(:plane) {double :plane}
    let(:weather) {double :weather}
  describe '#land' do
   it 'instructs a plane to land' do
   allow(weather).to receive(:stormy?).and_return false
   expect(airport).to respond_to(:land).with(1).argument
   end
  end

   context 'when full' do
   it 'it raises an error' do
    allow(airport).to receive(:stormy?).and_return false
    20.times do
     airport.land(plane)
   end
   expect {airport.land(plane)}.to raise_error 'Cannot land a plane. Airport is full.'
 end
end

 context 'when stormy' do
 it 'raises an error when landing and the weather is stormy' do
  allow(airport).to receive(:stormy?).and_return true
  expect { airport.land(plane) }.to raise_error 'Cannot land plane. Weather is stormy.'
 end
 it 'raises an error when taking off and the weather is stormy' do
  allow(airport).to receive(:stormy?).and_return true
  expect { airport.take_off(plane) }.to raise_error 'Cannot take off plane. Weather is stormy.'
 end
end

context 'when not stormy' do
  describe '#take_off' do
    it 'instructs plane take off' do
      expect(airport).to respond_to(:take_off).with(1).argument
    end
  end
end

context 'defaults' do
   subject(:default_airport) { described_class.new(weather_reporter) }

   it 'has a default capacity' do
     allow(weather_reporter).to receive(:stormy?).and_return false
     described_class::DEFAULT_CAPACITY.times { default_airport.land(plane) }
     expect { default_airport.land(plane) }.to raise_error 'Cannot land plane: airport full'
   end
 end
end
end
