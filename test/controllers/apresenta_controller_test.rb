require 'test_helper'

class ApresentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apresentum = apresenta(:one)
  end

  test "should get index" do
    get apresenta_url
    assert_response :success
  end

  test "should get new" do
    get new_apresentum_url
    assert_response :success
  end

  test "should create apresentum" do
    assert_difference('Apresentum.count') do
      post apresenta_url, params: { apresentum: { codcardapio: @apresentum.codcardapio, codigomesa: @apresentum.codigomesa, codpromocao: @apresentum.codpromocao, horarioentrada: @apresentum.horarioentrada } }
    end

    assert_redirected_to apresentum_url(Apresentum.last)
  end

  test "should show apresentum" do
    get apresentum_url(@apresentum)
    assert_response :success
  end

  test "should get edit" do
    get edit_apresentum_url(@apresentum)
    assert_response :success
  end

  test "should update apresentum" do
    patch apresentum_url(@apresentum), params: { apresentum: { codcardapio: @apresentum.codcardapio, codigomesa: @apresentum.codigomesa, codpromocao: @apresentum.codpromocao, horarioentrada: @apresentum.horarioentrada } }
    assert_redirected_to apresentum_url(@apresentum)
  end

  test "should destroy apresentum" do
    assert_difference('Apresentum.count', -1) do
      delete apresentum_url(@apresentum)
    end

    assert_redirected_to apresenta_url
  end
end
