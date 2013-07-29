class Destination < ActiveRecord::Base
  attr_accessible :city, :country, :enddate, :startdate

  validates :city, :presence => true
end
