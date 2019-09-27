require "application_system_test_case"

class HoldlistsTest < ApplicationSystemTestCase
  setup do
    @holdlist = holdlists(:one)
  end

  test "visiting the index" do
    visit holdlists_url
    assert_selector "h1", text: "Holdlists"
  end

  test "creating a Holdlist" do
    visit holdlists_url
    click_on "New Holdlist"

    fill_in "Book", with: @holdlist.book_id
    fill_in "Library", with: @holdlist.library_id
    fill_in "Student", with: @holdlist.student_id
    fill_in "University", with: @holdlist.university_id
    click_on "Create Holdlist"

    assert_text "Holdlist was successfully created"
    click_on "Back"
  end

  test "updating a Holdlist" do
    visit holdlists_url
    click_on "Edit", match: :first

    fill_in "Book", with: @holdlist.book_id
    fill_in "Library", with: @holdlist.library_id
    fill_in "Student", with: @holdlist.student_id
    fill_in "University", with: @holdlist.university_id
    click_on "Update Holdlist"

    assert_text "Holdlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Holdlist" do
    visit holdlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Holdlist was successfully destroyed"
  end
end
