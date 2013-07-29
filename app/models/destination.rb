class Destination < ActiveRecord::Base
  attr_accessible :city, :country, :enddate, :startdate

  has_many :itineraries

  validates :city, :presence => true
end
