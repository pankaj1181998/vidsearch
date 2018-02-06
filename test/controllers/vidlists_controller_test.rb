require 'test_helper'

class VidlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vidlist = vidlists(:one)
  end

  test "should get index" do
    get vidlists_url
    assert_response :success
  end

  test "should get new" do
    get new_vidlist_url
    assert_response :success
  end

  test "should create vidlist" do
    assert_difference('Vidlist.count') do
      post vidlists_url, params: { vidlist: { id: @vidlist.id, tags: @vidlist.tags } }
    end

    assert_redirected_to vidlist_url(Vidlist.last)
  end

  test "should show vidlist" do
    get vidlist_url(@vidlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_vidlist_url(@vidlist)
    assert_response :success
  end

  test "should update vidlist" do
    patch vidlist_url(@vidlist), params: { vidlist: { id: @vidlist.id, tags: @vidlist.tags } }
    assert_redirected_to vidlist_url(@vidlist)
  end

  test "should destroy vidlist" do
    assert_difference('Vidlist.count', -1) do
      delete vidlist_url(@vidlist)
    end

    assert_redirected_to vidlists_url
  end
end
