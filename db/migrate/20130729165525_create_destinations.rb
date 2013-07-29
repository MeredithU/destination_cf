class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
