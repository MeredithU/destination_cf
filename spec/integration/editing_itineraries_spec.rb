require 'spec_helper'

feature "Editing itineraries" do
  let!(:destination) { Factory(:destination) }
  let!(:itinerary) { Factory(:itinerary, :destination => destination) }

  before do
    visit '/'
    click_link destination.city
    click_link itinerary.activity
    click_link "Edit Itinerary"
  end

  scenario "Updating an itinerary" do
    fill_in "Activity", :with => "Granville Island"
    click_button "Update Itinerary"
    page.should have_content "Itinerary has been updated."
    within("#itinerary h2") do
      page.should have_content("Granville Island")
    end
    page.should_not have_content itinerary.activity
  end

  scenario "Updating an itinerary with invalid information" do
    fill_in "Activity", :with =>""
    click_button "Update Itinerary"
    page.should have_content("Itinerary has not been updated.")
  end
end
