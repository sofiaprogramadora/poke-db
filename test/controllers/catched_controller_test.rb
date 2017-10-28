require 'test_helper'

class CatchedControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catched = catched(:one)
  end

  test "should get index" do
    get catched_index_url
    assert_response :success
  end

  test "should get new" do
    get new_catched_url
    assert_response :success
  end

  test "should create catched" do
    assert_difference('Catched.count') do
      post catched_index_url, params: { catched: { poke_level: @catched.poke_level, pokemon_id: @catched.pokemon_id, user_id: @catched.user_id } }
    end

    assert_redirected_to catched_url(Catched.last)
  end

  test "should show catched" do
    get catched_url(@catched)
    assert_response :success
  end

  test "should get edit" do
    get edit_catched_url(@catched)
    assert_response :success
  end

  test "should update catched" do
    patch catched_url(@catched), params: { catched: { poke_level: @catched.poke_level, pokemon_id: @catched.pokemon_id, user_id: @catched.user_id } }
    assert_redirected_to catched_url(@catched)
  end

  test "should destroy catched" do
    assert_difference('Catched.count', -1) do
      delete catched_url(@catched)
    end

    assert_redirected_to catched_index_url
  end
end
