require 'spec_helper'

feature 'Deleting itineraries' do
  let!(:destination) { Factory(:destination) }
  let!(:itinerary) { Factory(:itinerary, :destination => destination) }

  before do
    visit '/'
    click_link destination.city
    click_link itinerary.activity
  end

  scenario "Deleting an itinerary" do
    click_link "Delete Itinerary"
    page.should have_content("Itinerary has been deleted.")
    page.current_url.should == destination_url(destination)
  end

end
