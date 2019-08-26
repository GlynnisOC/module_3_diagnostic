class NrelService

  def stations(limit)
    binding.pry
    connection = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?&limit=10&location=80203&radius=6.0") do |f|
      f.headers["api_key"] = ENV["NREL_API_KEY"]
      f.headers["fuel_type"] = ["ELEC, LPG"]
      f.adapter Faraday.default_adapter
    end
    # I believe we don't want this much info in the url, but playing
  end
end
