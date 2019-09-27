require "application_system_test_case"

class LibrarybooklistsTest < ApplicationSystemTestCase
  setup do
    @librarybooklist = librarybooklists(:one)
  end

  test "visiting the index" do
    visit librarybooklists_url
    assert_selector "h1", text: "Librarybooklists"
  end

  test "creating a Librarybooklist" do
    visit librarybooklists_url
    click_on "New Librarybooklist"

    fill_in "Book", with: @librarybooklist.book_id
    fill_in "Library", with: @librarybooklist.library_id
    fill_in "Number", with: @librarybooklist.number
    fill_in "University", with: @librarybooklist.university_id
    click_on "Create Librarybooklist"

    assert_text "Librarybooklist was successfully created"
    click_on "Back"
  end

  test "updating a Librarybooklist" do
    visit librarybooklists_url
    click_on "Edit", match: :first

    fill_in "Book", with: @librarybooklist.book_id
    fill_in "Library", with: @librarybooklist.library_id
    fill_in "Number", with: @librarybooklist.number
    fill_in "University", with: @librarybooklist.university_id
    click_on "Update Librarybooklist"

    assert_text "Librarybooklist was successfully updated"
    click_on "Back"
  end

  test "destroying a Librarybooklist" do
    visit librarybooklists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Librarybooklist was successfully destroyed"
  end
end
