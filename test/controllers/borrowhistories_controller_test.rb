require 'test_helper'

class BorrowhistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrowhistory = borrowhistories(:one)
  end

  test "should get index" do
    get borrowhistories_url
    assert_response :success
  end

  test "should get new" do
    get new_borrowhistory_url
    assert_response :success
  end

  test "should create borrowhistory" do
    assert_difference('Borrowhistory.count') do
      post borrowhistories_url, params: { borrowhistory: { book_id: @borrowhistory.book_id, library_id: @borrowhistory.library_id, student_id: @borrowhistory.student_id, university_id: @borrowhistory.university_id } }
    end

    assert_redirected_to borrowhistory_url(Borrowhistory.last)
  end

  test "should show borrowhistory" do
    get borrowhistory_url(@borrowhistory)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrowhistory_url(@borrowhistory)
    assert_response :success
  end

  test "should update borrowhistory" do
    patch borrowhistory_url(@borrowhistory), params: { borrowhistory: { book_id: @borrowhistory.book_id, library_id: @borrowhistory.library_id, student_id: @borrowhistory.student_id, university_id: @borrowhistory.university_id } }
    assert_redirected_to borrowhistory_url(@borrowhistory)
  end

  test "should destroy borrowhistory" do
    assert_difference('Borrowhistory.count', -1) do
      delete borrowhistory_url(@borrowhistory)
    end

    assert_redirected_to borrowhistories_url
  end
end
