require 'spec_helper'

feature 'Creating Destinations' do
  before do
    visit '/'
    click_link 'New Destination'
  end

  scenario "can create a destination" do
    fill_in 'City', :with => 'Vancouver'
    fill_in 'Country', :with => 'Canada'
    click_button 'Create Destination'
    page.should have_content('Destination has been created.')

    destination = Destination.find_by_city("Vancouver")
    page.current_url.should == destination_url(destination)
    title = "Vancouver - Destinations - TravelAppCf"
    find("title").should have_content(title)
  end

  scenario "can not create a desination without a city" do
    click_button 'Create Destination'
    page.should have_content("Destination has not been created.")
    page.should have_content("City can't be blank")
  end
end
