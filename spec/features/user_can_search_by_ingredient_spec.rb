require 'rails_helper'

feature "user can search by ingredient" do
  scenario "user selects sweet potatoes" do
    # As a user,
    # When I visit "/"
    visit "/"
    # And I fill in the search form with "sweet potatoes"
    select "sweet potatoes", from: :generalSearchInput
    # (Note: Use the existing search form)

    # And I click "Search"
    click_on "Search"

    expect(current_path).to eq("/foods")
    # Then I should be on page "/foods"

    # Then I should see a total of the number of items returned by the search.
    expect(page).to have_content("totalHits": 32696)
    # Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
    expect(page).to have_content("top ten")

    within "#top_ten" do
      expect(page).to have_content(gtin/upc_code)
      expect(page).to have_content(description)
      expect(page).to have_content(brand_owner)
      expect(page).to have_content(ingredients)
    end
    # And for each of the foods I should see:
    # - The food's GTIN/UPC code
    # - The food's description
    # - The food's Brand Owner
    # - The food's ingredients
  end
end
