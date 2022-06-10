class TemperatureState < ApplicationRecord
  HOT = 32
  COLD = 5

  def self.min_temperature_to_be_hot
    temp = TemperatureState.find_by(label: 'hot')
    temp&.temperature || TemperatureState::HOT
  end

  def self.max_temperature_to_be_cold
    temp = TemperatureState.find_by(label: 'cold')
    temp&.temperature || TemperatureState::COLD
  end
end
