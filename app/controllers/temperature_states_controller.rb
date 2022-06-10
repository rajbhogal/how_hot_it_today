class TemperatureStatesController < ApplicationController
  def index
    @postcode = params[:postcode]

    if @postcode
      if PostcodeValidation.new(@postcode).valid?
        max_temp = WeatherApi.new(@postcode).max_temp
        if max_temp[:error]
          @error = max_temp[:error]
        else
          @weather_condition = TemperatureStateFinder.new(max_temp[:temp]).call
        end
      else
        @error = 'Invalid Postcode'
      end
    end
  end
end
