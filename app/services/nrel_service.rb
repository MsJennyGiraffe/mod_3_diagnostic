# https://developer.nrel.gov/api/alt-fuel-stations/v1.json?
# fuel_type=E85,
# ELEC&state=CA
# &limit=2
# &api_key=nrel_key
# &format=JSON

# https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=sZbgdQHYQQLBha3dhHsaQddI3NzKTe3fvKOJY3Sg&format=JSON

# GET /api/alt-fuel-stations/v1/nearest.format?parameters

class NrelService
  def initialize
    @connection = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1.json')
  end

  def get_station#(zipcode)
    response = @connection.get("fuel_type=E85,ELEC&state=CA&limit=2&new_key=#{nrel_api_key}&format=JSON")
    JSON.parse(response.body)
  end
end
