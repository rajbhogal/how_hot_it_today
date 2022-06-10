class TemperatureStateFinder
  def initialize(temp)
    @temp = temp.to_f
  end

  def call
    temperature_condition
  end

  private

  attr_accessor :temp

  def temperature_condition
    return 'Hot' if temp >= min_for_hot
    return 'Cold' if temp <= max_for_cold.to_f

    'Warm'
  end

  def min_for_hot
    TemperatureState.min_temperature_to_be_hot
  end

  def max_for_cold
    TemperatureState.max_temperature_to_be_cold
  end
end
