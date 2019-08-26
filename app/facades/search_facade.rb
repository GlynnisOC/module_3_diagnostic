class SearchFacade

  def stations
    @_stations ||= stations.map { |station| Station.new(station)}
  end

  
end
