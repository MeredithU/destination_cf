require 'spec_helper'

feature "Creating Itineraries" do
  before do
    Factory(:destination, :city => "Vancouver")
    visit '/'
    click_link "Vancouver"
    click_link "New Itinerary"
  end

  scenario "Creating an itinerary" do
    fill_in "Activity", :with => "Walk along the seawall"
    fill_in "City", :with => "Vancouver"
    click_button "Create Itinerary"
    page.should have_content("Itinerary has been created.")
  end

  scenario "Creating a ticket without valid attributes fails" do
    click_button "Create Itinerary"
    page.should have_content("Itinerary has not been created.")
    page.should have_content("Activity can't be blank")
    page.should have_content("City can't be blank")
  end
end
