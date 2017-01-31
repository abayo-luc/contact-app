class Contact < ApplicationRecord
  def update_time
    return updated_at.strftime('%A, %v %R')
  end

  def create_time
    return created_at.strftime('%A, %v %R')
  end

  def latitude
    require 'geokit'
    include GeoKit::Geocoders

    coords = MultiGeocoder.geocode(location)
    return coords.lat
  end
  def longitude
    require 'geokit'
    include GeoKit::Geocoders

    coords = MultiGeocoder.geocode(location)
    return coords.lng
  end

end
