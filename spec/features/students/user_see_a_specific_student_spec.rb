require 'rails_helper'

describe 'as a user' do
  describe 'when i am on students show path' do
    scenario 'then i see a student name' do
      student = Student.create!(name: "Elon Musk")

      visit student_path(student)

      expect(page).to have_content("Elon Musk")
    end
  end
end