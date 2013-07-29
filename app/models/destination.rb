class Destination < ActiveRecord::Base
  attr_accessible :city, :country, :enddate, :startdate

  has_many :itineraries, :dependent => :destroy
  has_many :itineraries, :dependent => :delete_all
  has_many :itineraries, :dependent => :nullify

  validates :city, :presence => true
end
