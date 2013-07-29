require 'spec_helper'

feature 'Deleting destinations' do
  scenario "deleting a destination" do
    Factory(:destination, :city => "Vancouver")
    visit '/'
    click_link "Vancouver"
    click_link "Delete Destination"
    page.should have_content("Destination has been deleted.")

    visit '/'
    page.should_not have_content("Vancouver")
  end
end
