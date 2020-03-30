require 'rails_helper'

feature "user can search by ingredient" do
  # As a user,
  # When I visit "/"
    visit "/"
    # And I fill in the search form with "sweet potatoes"
    select "sweet potatoes", from: :
end

# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
