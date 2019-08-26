class NrelService

  def stations(limit)
    connection = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest") do |f|
      f.headers["api_key"] = ENV["NREL_API_KEY"]
      f.headers["fuel_type"] = ["ELEC, LPG"]
      f.headers["format"] = ["json"]
      f.headers["location"] = ["80203"]
      f.headers["radius"] = ["6.0"]
      f.adapter Faraday.default_adapter
    end
    response = connection.get('/fuel_type')
    JSON.parse(response.body, symbolize_names: true)
    # binding.pry
  end
end
