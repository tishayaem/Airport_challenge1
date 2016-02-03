require 'weather'

describe Weather do
  subject(:weather) {described_class.new}
  describe '#stormy' do
    it 'can be not stormy' do
      expect(weather.stormy?).to be false
    end
    it 'can be stormy' do
      expect(weather.stormy?).to be true

    end
  end

end
