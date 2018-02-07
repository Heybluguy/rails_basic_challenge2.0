require 'rails_helper'

describe 'as a user i can create a new address' do
  describe 'when im on new address path' do
    scenario 'then i can see a form to create a new address' d
      student = Student.create!(name: "Thor")

      visit new_student_address_path

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