require 'test_helper'

class LibrarybooklistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @librarybooklist = librarybooklists(:one)
  end

  test "should get index" do
    get librarybooklists_url
    assert_response :success
  end

  test "should get new" do
    get new_librarybooklist_url
    assert_response :success
  end

  test "should create librarybooklist" do
    assert_difference('Librarybooklist.count') do
      post librarybooklists_url, params: { librarybooklist: { book_id: @librarybooklist.book_id, library_id: @librarybooklist.library_id, number: @librarybooklist.number, university_id: @librarybooklist.university_id } }
    end

    assert_redirected_to librarybooklist_url(Librarybooklist.last)
  end

  test "should show librarybooklist" do
    get librarybooklist_url(@librarybooklist)
    assert_response :success
  end

  test "should get edit" do
    get edit_librarybooklist_url(@librarybooklist)
    assert_response :success
  end

  test "should update librarybooklist" do
    patch librarybooklist_url(@librarybooklist), params: { librarybooklist: { book_id: @librarybooklist.book_id, library_id: @librarybooklist.library_id, number: @librarybooklist.number, university_id: @librarybooklist.university_id } }
    assert_redirected_to librarybooklist_url(@librarybooklist)
  end

  test "should destroy librarybooklist" do
    assert_difference('Librarybooklist.count', -1) do
      delete librarybooklist_url(@librarybooklist)
    end

    assert_redirected_to librarybooklists_url
  end
end
