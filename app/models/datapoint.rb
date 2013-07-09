class Datapoint < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name

  geocoded_by :address
  after_validation :geocode, :if => :name_changed?

  acts_as_gmappable

  def gmaps4rails_address
  	"#{self.address}"
  end

  def address
  	name
  end
end
