require 'test_helper'

class AppearersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appearer = appearers(:one)
  end

  test "should get index" do
    get appearers_url
    assert_response :success
  end

  test "should get new" do
    get new_appearer_url
    assert_response :success
  end

  test "should create appearer" do
    assert_difference('Appearer.count') do
      post appearers_url, params: { appearer: { apellidos: @appearer.apellidos, identificacion: @appearer.identificacion, mercantile_id: @appearer.mercantile_id, nombres: @appearer.nombres, user_id: @appearer.user_id } }
    end

    assert_redirected_to appearer_url(Appearer.last)
  end

  test "should show appearer" do
    get appearer_url(@appearer)
    assert_response :success
  end

  test "should get edit" do
    get edit_appearer_url(@appearer)
    assert_response :success
  end

  test "should update appearer" do
    patch appearer_url(@appearer), params: { appearer: { apellidos: @appearer.apellidos, identificacion: @appearer.identificacion, mercantile_id: @appearer.mercantile_id, nombres: @appearer.nombres, user_id: @appearer.user_id } }
    assert_redirected_to appearer_url(@appearer)
  end

  test "should destroy appearer" do
    assert_difference('Appearer.count', -1) do
      delete appearer_url(@appearer)
    end

    assert_redirected_to appearers_url
  end
end
