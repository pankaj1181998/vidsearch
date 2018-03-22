require 'test_helper'

class MydbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mydb = mydbs(:one)
  end

  test "should get index" do
    get mydbs_url
    assert_response :success
  end

  test "should get new" do
    get new_mydb_url
    assert_response :success
  end

  test "should create mydb" do
    assert_difference('Mydb.count') do
      post mydbs_url, params: { mydb: { image: @mydb.image, title: @mydb.title, vid_link: @mydb.vid_link } }
    end

    assert_redirected_to mydb_url(Mydb.last)
  end

  test "should show mydb" do
    get mydb_url(@mydb)
    assert_response :success
  end

  test "should get edit" do
    get edit_mydb_url(@mydb)
    assert_response :success
  end

  test "should update mydb" do
    patch mydb_url(@mydb), params: { mydb: { image: @mydb.image, title: @mydb.title, vid_link: @mydb.vid_link } }
    assert_redirected_to mydb_url(@mydb)
  end

  test "should destroy mydb" do
    assert_difference('Mydb.count', -1) do
      delete mydb_url(@mydb)
    end

    assert_redirected_to mydbs_url
  end
end
