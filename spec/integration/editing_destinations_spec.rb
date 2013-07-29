require 'spec_helper'

feature "Editing Destinations" do
  before do
    Factory(:destination, :city => "Vancouver")
    visit '/'
    click_link "Vancouver"
    click_link "Edit Destination"
  end


  scenario "Updating a destination" do
    fill_in "City", :with => "Seattle"
    click_button "Update Destination"
    page.should have_content("Destination has been updated.")
  end

  scenario "Updating a destination with invalid attributes is bad" do
    fill_in "City", :with => ""
    click_button "Update Destination"
    page.should have_content("Destination has not been updated.")
  end
end
