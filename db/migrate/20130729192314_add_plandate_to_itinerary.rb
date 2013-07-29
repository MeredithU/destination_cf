class AddPlandateToItinerary < ActiveRecord::Migration
  def change
    add_column :itineraries, :plandate, :datetime
  end
end
