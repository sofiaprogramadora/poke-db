require 'test_helper'

class AtrapadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atrapado = atrapados(:one)
  end

  test "should get index" do
    get atrapados_url
    assert_response :success
  end

  test "should get new" do
    get new_atrapado_url
    assert_response :success
  end

  test "should create atrapado" do
    assert_difference('Atrapado.count') do
      post atrapados_url, params: { atrapado: { poke_level: @atrapado.poke_level, pokemons_id: @atrapado.pokemons_id, users_id: @atrapado.users_id } }
    end

    assert_redirected_to atrapado_url(Atrapado.last)
  end

  test "should show atrapado" do
    get atrapado_url(@atrapado)
    assert_response :success
  end

  test "should get edit" do
    get edit_atrapado_url(@atrapado)
    assert_response :success
  end

  test "should update atrapado" do
    patch atrapado_url(@atrapado), params: { atrapado: { poke_level: @atrapado.poke_level, pokemons_id: @atrapado.pokemons_id, users_id: @atrapado.users_id } }
    assert_redirected_to atrapado_url(@atrapado)
  end

  test "should destroy atrapado" do
    assert_difference('Atrapado.count', -1) do
      delete atrapado_url(@atrapado)
    end

    assert_redirected_to atrapados_url
  end
end
