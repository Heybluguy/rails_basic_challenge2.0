require 'rails_helper'

describe 'as a user i can get to show page from student name' do
  describe 'when i am on student index path' do
    scenario 'then i click on student name i will see student show page' do
      student = Student.create!(name: "Black Panther")

      visit students_path

      click_on "Black Panther"

      expect(page).to have_content("Black Panther")
      expect(page).to have_content(student.name)
      expect(current_path).to eq(student_path(student))
    end
  end
end