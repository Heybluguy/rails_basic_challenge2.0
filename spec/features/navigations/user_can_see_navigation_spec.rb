require 'rails_helper'

describe 'as a user i can see navigation links' do
  describe 'when i am on student index path' do
    scenario 'then i see links to see a list of all students, or creat a student' do

      visit students_path

      expect(page).to have_content("List of Students")
      expect(page).to have_content("Create A Student")
    end
  end

  describe 'when i am on new student path' do
    scenario 'then i see links to see a list of all students, or creat a student' do

      visit new_student_path

      expect(page).to have_content("List of Students")
      expect(page).to have_content("Create A Student")
    end
  end

  describe 'when i am on edit student path' do
    scenario 'then i see links to see a list of all students, or creat a student' do
      student = Student.create!(name: "Peter Parker")

      visit edit_student_path(student)

      expect(page).to have_content("List of Students")
      expect(page).to have_content("Create A Student")
    end
  end

   describe 'when i am on individual student path' do
    scenario 'then i see links to see a list of all students, or creat a student' do
      student = Student.create!(name: "Steve Rogers")

      visit student_path(student)

      expect(page).to have_content("List of Students")
      expect(page).to have_content("Create A Student")
    end
  end

end

# As a user
# When I visit any page
# I see links to see a list of all students, or create a new student

