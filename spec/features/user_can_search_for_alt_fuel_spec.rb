require 'rails_helper'

feature 'User can visit root page' do
  scenario "and search for alternate fuel" do
    zip = 80203
    visit '/'

    fill_in :q, with: zip
    click_on 'Locate'

    expect(current_path).to eq('/search')
    expect(page).to have_content "Search Results"

    expect(page).to_not have_content("hydrogen")
    expect((".stations").count).to eq 10
  end
end


# Then I should see a list of the 10 closest stations within 6 miles sorted
# by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types,
# Distance, and Access Times
