require 'rails_helper'

describe 'as a user i can create a new address' do
  describe 'when im on new address path' do
    scenario 'then i can see a form to create a new address' do
      student = Student.create!(name: "Thor")

      visit new_student_address_path(student)

      fill_in "address[description]",	with: "Home sweet home"
      fill_in "address[street]",	with: "Thunder road"
      fill_in "address[city]",	with: "Ragnorak"
      fill_in "address[state]",	with: "Heavens"
      fill_in "address[zipcode]",	with: "010101"

      click_on "Create Address"

      expect(page).to have_content("Ragnorak")
    end
  end
end

# As a user
# When I visit /students/:id/addresses/new
# And I fill in description with a description (e.g. “Summer Address”)
# And I fill in street with a street address
# And I fill in city with a city
# And I fill in state with a state
# And I fill in zip code with a zip code
# And I click submit
# I am taken to that student’s show page
# And I see the description, street, city, state, and zip on that page