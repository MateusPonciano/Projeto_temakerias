require 'test_helper'

class ComposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compo = compos(:one)
  end

  test "should get index" do
    get compos_url
    assert_response :success
  end

  test "should get new" do
    get new_compo_url
    assert_response :success
  end

  test "should create compo" do
    assert_difference('Compo.count') do
      post compos_url, params: { compo: { codbarras: @compo.codbarras, codcardapio: @compo.codcardapio } }
    end

    assert_redirected_to compo_url(Compo.last)
  end

  test "should show compo" do
    get compo_url(@compo)
    assert_response :success
  end

  test "should get edit" do
    get edit_compo_url(@compo)
    assert_response :success
  end

  test "should update compo" do
    patch compo_url(@compo), params: { compo: { codbarras: @compo.codbarras, codcardapio: @compo.codcardapio } }
    assert_redirected_to compo_url(@compo)
  end

  test "should destroy compo" do
    assert_difference('Compo.count', -1) do
      delete compo_url(@compo)
    end

    assert_redirected_to compos_url
  end
end
