require 'rails_helper'

describe 'as a user' do
  describe 'when i am on new student path' do
    scenario 'then i see a form to create a new student' do

      visit new_student_path

      fill_in "student[name]",	with: "Bruce Banner"
      click_on "Create Student"

      expect(page).to have_content("Bruce Banner")
    end
  end
end


# As a user
# When I visit /students/new
# And I fill in name
# And I click submit
# I am on the student show page
# And I see that student’s name