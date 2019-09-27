require 'test_helper'

class StudentborrowlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentborrowlist = studentborrowlists(:one)
  end

  test "should get index" do
    get studentborrowlists_url
    assert_response :success
  end

  test "should get new" do
    get new_studentborrowlist_url
    assert_response :success
  end

  test "should create studentborrowlist" do
    assert_difference('Studentborrowlist.count') do
      post studentborrowlists_url, params: { studentborrowlist: { book_id: @studentborrowlist.book_id, duedate: @studentborrowlist.duedate, student_id: @studentborrowlist.student_id } }
    end

    assert_redirected_to studentborrowlist_url(Studentborrowlist.last)
  end

  test "should show studentborrowlist" do
    get studentborrowlist_url(@studentborrowlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentborrowlist_url(@studentborrowlist)
    assert_response :success
  end

  test "should update studentborrowlist" do
    patch studentborrowlist_url(@studentborrowlist), params: { studentborrowlist: { book_id: @studentborrowlist.book_id, duedate: @studentborrowlist.duedate, student_id: @studentborrowlist.student_id } }
    assert_redirected_to studentborrowlist_url(@studentborrowlist)
  end

  test "should destroy studentborrowlist" do
    assert_difference('Studentborrowlist.count', -1) do
      delete studentborrowlist_url(@studentborrowlist)
    end

    assert_redirected_to studentborrowlists_url
  end
end
