class Itinerary < ActiveRecord::Base
  belongs_to :destination
  attr_accessible :activity, :city, :plandate

  validates :activity, :presence => true
  validates :city, :presence => true
end
