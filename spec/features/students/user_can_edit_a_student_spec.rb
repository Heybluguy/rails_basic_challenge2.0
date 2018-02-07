require 'rails_helper'

describe 'as a user' do
  describe 'when i am on edit student path' do
    scenario 'then i can see a form that lets me edit the name of a student' do
      student = Student.create!(name: "Bruce Banner")

      visit edit_student_path(student)

      fill_in "student[name]",	with: "The Hulk"

      click_on "Update Student"

      expect(page).to have_content("The Hulk")
      expect(current_path).to eq(student_path(student))
    end
  end
end

# As a user
# When I visit /students/:id/edit
# And I enter a new name
# And I click submit
# I am on the student show page
# And I can see that student’s new name