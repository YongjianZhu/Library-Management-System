require "application_system_test_case"

class LibrariesTest < ApplicationSystemTestCase
  setup do
    @library = libraries(:one)
  end

  test "visiting the index" do
    visit libraries_url
    assert_selector "h1", text: "Libraries"
  end

  test "creating a Library" do
    visit libraries_url
    click_on "New Library"

    fill_in "Location", with: @library.location
    fill_in "Max borrowed days", with: @library.max_borrowed_days
    fill_in "Name", with: @library.name
    fill_in "Overdue fines", with: @library.overdue_fines
    fill_in "University", with: @library.university_id
    click_on "Create Library"

    assert_text "Library was successfully created"
    click_on "Back"
  end

  test "updating a Library" do
    visit libraries_url
    click_on "Edit", match: :first

    fill_in "Location", with: @library.location
    fill_in "Max borrowed days", with: @library.max_borrowed_days
    fill_in "Name", with: @library.name
    fill_in "Overdue fines", with: @library.overdue_fines
    fill_in "University", with: @library.university_id
    click_on "Update Library"

    assert_text "Library was successfully updated"
    click_on "Back"
  end

  test "destroying a Library" do
    visit libraries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Library was successfully destroyed"
  end
end
