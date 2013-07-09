class Datapoint < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name
end
