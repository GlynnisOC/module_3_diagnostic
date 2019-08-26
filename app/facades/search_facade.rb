class SearchFacade

  def stations
    service = NrelService.new
    service.stations(10)
  end


end
