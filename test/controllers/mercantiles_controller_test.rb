require 'test_helper'

class MercantilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mercantile = mercantiles(:one)
  end

  test "should get index" do
    get mercantiles_url
    assert_response :success
  end

  test "should get new" do
    get new_mercantile_url
    assert_response :success
  end

  test "should create mercantile" do
    assert_difference('Mercantile.count') do
      post mercantiles_url, params: { mercantile: { acto: @mercantile.acto, fecha: @mercantile.fecha, observacion: @mercantile.observacion, secuencia: @mercantile.secuencia, user_id: @mercantile.user_id } }
    end

    assert_redirected_to mercantile_url(Mercantile.last)
  end

  test "should show mercantile" do
    get mercantile_url(@mercantile)
    assert_response :success
  end

  test "should get edit" do
    get edit_mercantile_url(@mercantile)
    assert_response :success
  end

  test "should update mercantile" do
    patch mercantile_url(@mercantile), params: { mercantile: { acto: @mercantile.acto, fecha: @mercantile.fecha, observacion: @mercantile.observacion, secuencia: @mercantile.secuencia, user_id: @mercantile.user_id } }
    assert_redirected_to mercantile_url(@mercantile)
  end

  test "should destroy mercantile" do
    assert_difference('Mercantile.count', -1) do
      delete mercantile_url(@mercantile)
    end

    assert_redirected_to mercantiles_url
  end
end
