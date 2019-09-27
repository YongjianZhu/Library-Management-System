require 'test_helper'

class HoldlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holdlist = holdlists(:one)
  end

  test "should get index" do
    get holdlists_url
    assert_response :success
  end

  test "should get new" do
    get new_holdlist_url
    assert_response :success
  end

  test "should create holdlist" do
    assert_difference('Holdlist.count') do
      post holdlists_url, params: { holdlist: { book_id: @holdlist.book_id, library_id: @holdlist.library_id, student_id: @holdlist.student_id, university_id: @holdlist.university_id } }
    end

    assert_redirected_to holdlist_url(Holdlist.last)
  end

  test "should show holdlist" do
    get holdlist_url(@holdlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_holdlist_url(@holdlist)
    assert_response :success
  end

  test "should update holdlist" do
    patch holdlist_url(@holdlist), params: { holdlist: { book_id: @holdlist.book_id, library_id: @holdlist.library_id, student_id: @holdlist.student_id, university_id: @holdlist.university_id } }
    assert_redirected_to holdlist_url(@holdlist)
  end

  test "should destroy holdlist" do
    assert_difference('Holdlist.count', -1) do
      delete holdlist_url(@holdlist)
    end

    assert_redirected_to holdlists_url
  end
end
