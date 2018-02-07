require 'rails_helper'

describe 'as a user' do
  describe 'when i am on students index path' do
    scenario 'then i see a list of each student' do
      student_1 = Student.create!(name: "Peter Parker")
      student_2 = Student.create!(name: "Steve Rogers")
      student_3 = Student.create!(name: "Tony Stark")

      visit students_path

      expect(page).to have_content("Peter Parker")
      expect(page).to have_content("Steve Rogers")
      expect(page).to have_content("Tony Stark")
    end
  end
end

# User Can See a List of Students
# As a user
# When I visit /students
# I see a list of student names
