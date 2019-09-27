require "application_system_test_case"

class StudentborrowlistsTest < ApplicationSystemTestCase
  setup do
    @studentborrowlist = studentborrowlists(:one)
  end

  test "visiting the index" do
    visit studentborrowlists_url
    assert_selector "h1", text: "Studentborrowlists"
  end

  test "creating a Studentborrowlist" do
    visit studentborrowlists_url
    click_on "New Studentborrowlist"

    fill_in "Book", with: @studentborrowlist.book_id
    fill_in "Duedate", with: @studentborrowlist.duedate
    fill_in "Student", with: @studentborrowlist.student_id
    click_on "Create Studentborrowlist"

    assert_text "Studentborrowlist was successfully created"
    click_on "Back"
  end

  test "updating a Studentborrowlist" do
    visit studentborrowlists_url
    click_on "Edit", match: :first

    fill_in "Book", with: @studentborrowlist.book_id
    fill_in "Duedate", with: @studentborrowlist.duedate
    fill_in "Student", with: @studentborrowlist.student_id
    click_on "Update Studentborrowlist"

    assert_text "Studentborrowlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentborrowlist" do
    visit studentborrowlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentborrowlist was successfully destroyed"
  end
end
