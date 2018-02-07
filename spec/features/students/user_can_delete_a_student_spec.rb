require 'rails_helper'

describe 'as a user' do
  describe 'when i am on student index path and i click on delte next to a name' do
    scenario 'then i shouldnt see the name of the student any more' do
      student = Student.create!(name: "IronMan")


      visit students_path


      click_on "Delete"

      expect(page).not_to have_content("Tony Stark")
      expect(current_path).to eq(students_path)
    end
  end
end

# As a user
# When I visit /students
# And I click “Delete” next to a student’s name
# I see the students index
# And that student’s name is no longer on the page
