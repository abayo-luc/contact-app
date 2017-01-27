class Contact < ApplicationRecord
  def update_time
    return updated_at.strftime('%A, %v %R')
  end

  def create_time
    return created_at.strftime('%A, %v %R')
  end

  def geocoder
      coordinates = Geocoder.coordinates(address)
  end
end
