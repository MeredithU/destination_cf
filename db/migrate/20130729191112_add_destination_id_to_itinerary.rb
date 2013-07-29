class AddDestinationIdToItinerary < ActiveRecord::Migration
  def change
    add_column :itineraries, :destination_id, :integer
  end
end
