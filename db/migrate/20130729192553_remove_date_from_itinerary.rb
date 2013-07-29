class RemoveDateFromItinerary < ActiveRecord::Migration
  def up
    remove_column :itineraries, :date
  end

  def down
    add_column :itineraries, :date, :datetime
  end
end
