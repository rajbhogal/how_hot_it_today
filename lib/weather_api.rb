class WeatherApi
  BASE_URL = 'https://api.weatherapi.com/v1/forecast.json?key=55b7fdf17805493199a143223212409'

  def initialize(postcode)
    @postcode = postcode
  end

  def max_temp
    url = "#{BASE_URL}&q=#{postcode}&day=0"
    response = HTTParty.get(url)
    return { error: "Error occured on fetching weather" } unless response.success?

    { temp: fetch_max_temp(response.parsed_response) }
  end

  private

  attr_accessor :postcode

  def fetch_max_temp(response)
    temp_detail = response.dig('forecast', 'forecastday')&.first || {}
    temp_detail.dig('day', 'maxtemp_c')
  end
end
