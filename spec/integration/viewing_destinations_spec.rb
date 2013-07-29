require 'spec_helper'

feature "Viewing destinations" do
  scenario "Listing all destinations" do
    destination = Factory.create(:destination, :city => "Vancouver")
    visit '/'
    click_link 'Vancouver'
    page.current_url.should == destination_url(destination)
  end
end
