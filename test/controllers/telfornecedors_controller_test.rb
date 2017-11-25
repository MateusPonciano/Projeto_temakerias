require 'test_helper'

class TelfornecedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telfornecedor = telfornecedors(:one)
  end

  test "should get index" do
    get telfornecedors_url
    assert_response :success
  end

  test "should get new" do
    get new_telfornecedor_url
    assert_response :success
  end

  test "should create telfornecedor" do
    assert_difference('Telfornecedor.count') do
      post telfornecedors_url, params: { telfornecedor: { cnpj: @telfornecedor.cnpj, telefone: @telfornecedor.telefone } }
    end

    assert_redirected_to telfornecedor_url(Telfornecedor.last)
  end

  test "should show telfornecedor" do
    get telfornecedor_url(@telfornecedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_telfornecedor_url(@telfornecedor)
    assert_response :success
  end

  test "should update telfornecedor" do
    patch telfornecedor_url(@telfornecedor), params: { telfornecedor: { cnpj: @telfornecedor.cnpj, telefone: @telfornecedor.telefone } }
    assert_redirected_to telfornecedor_url(@telfornecedor)
  end

  test "should destroy telfornecedor" do
    assert_difference('Telfornecedor.count', -1) do
      delete telfornecedor_url(@telfornecedor)
    end

    assert_redirected_to telfornecedors_url
  end
end
