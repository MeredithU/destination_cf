class DropItineraries < ActiveRecord::Migration
  def up

  end

  def down
    drop_table :itineraries
  end
end
