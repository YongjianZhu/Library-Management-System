require "application_system_test_case"

class BorrowhistoriesTest < ApplicationSystemTestCase
  setup do
    @borrowhistory = borrowhistories(:one)
  end

  test "visiting the index" do
    visit borrowhistories_url
    assert_selector "h1", text: "Borrowhistories"
  end

  test "creating a Borrowhistory" do
    visit borrowhistories_url
    click_on "New Borrowhistory"

    fill_in "Book", with: @borrowhistory.book_id
    fill_in "Library", with: @borrowhistory.library_id
    fill_in "Student", with: @borrowhistory.student_id
    fill_in "University", with: @borrowhistory.university_id
    click_on "Create Borrowhistory"

    assert_text "Borrowhistory was successfully created"
    click_on "Back"
  end

  test "updating a Borrowhistory" do
    visit borrowhistories_url
    click_on "Edit", match: :first

    fill_in "Book", with: @borrowhistory.book_id
    fill_in "Library", with: @borrowhistory.library_id
    fill_in "Student", with: @borrowhistory.student_id
    fill_in "University", with: @borrowhistory.university_id
    click_on "Update Borrowhistory"

    assert_text "Borrowhistory was successfully updated"
    click_on "Back"
  end

  test "destroying a Borrowhistory" do
    visit borrowhistories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Borrowhistory was successfully destroyed"
  end
end
