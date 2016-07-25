require 'rails_helper'

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

RSpec.feature "User can search" do
  scenario "user can enter a zipcode and see results" do
    visit "/"
    fill_in "q", with: "80203"
    click_button "Locate"

    expect(current_path).to eq("/search?zip=80203")
    expect(page).to have_content("Name")
    expect(page).to have_content("Addess")
    expect(page).to have_content("Fuel Types")
    expect(page).to have_content("Distance")
    expect(page).to have_content("Access Times")
  end
end
