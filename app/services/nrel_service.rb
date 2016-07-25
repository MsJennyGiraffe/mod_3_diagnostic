# https://developer.nrel.gov/api/alt-fuel-stations/v1.json?
# fuel_type=E85,
# ELEC&state=CA
# &limit=2
# &api_key=nrel_key
# &format=JSON

# GET /api/alt-fuel-stations/v1/nearest.format?parameters

response = Faraday.get('https://developer.nrel.gov/api/alt-fuel-stations/v1.json')
