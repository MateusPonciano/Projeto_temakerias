require 'test_helper'

class TemakeriacompraprodutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temakeriacompraproduto = temakeriacompraprodutos(:one)
  end

  test "should get index" do
    get temakeriacompraprodutos_url
    assert_response :success
  end

  test "should get new" do
    get new_temakeriacompraproduto_url
    assert_response :success
  end

  test "should create temakeriacompraproduto" do
    assert_difference('Temakeriacompraproduto.count') do
      post temakeriacompraprodutos_url, params: { temakeriacompraproduto: { cnpj_fornecedor: @temakeriacompraproduto.cnpj_fornecedor, cnpj_temakeria: @temakeriacompraproduto.cnpj_temakeria, codbarras: @temakeriacompraproduto.codbarras, data: @temakeriacompraproduto.data, preco: @temakeriacompraproduto.preco, qtd: @temakeriacompraproduto.qtd } }
    end

    assert_redirected_to temakeriacompraproduto_url(Temakeriacompraproduto.last)
  end

  test "should show temakeriacompraproduto" do
    get temakeriacompraproduto_url(@temakeriacompraproduto)
    assert_response :success
  end

  test "should get edit" do
    get edit_temakeriacompraproduto_url(@temakeriacompraproduto)
    assert_response :success
  end

  test "should update temakeriacompraproduto" do
    patch temakeriacompraproduto_url(@temakeriacompraproduto), params: { temakeriacompraproduto: { cnpj_fornecedor: @temakeriacompraproduto.cnpj_fornecedor, cnpj_temakeria: @temakeriacompraproduto.cnpj_temakeria, codbarras: @temakeriacompraproduto.codbarras, data: @temakeriacompraproduto.data, preco: @temakeriacompraproduto.preco, qtd: @temakeriacompraproduto.qtd } }
    assert_redirected_to temakeriacompraproduto_url(@temakeriacompraproduto)
  end

  test "should destroy temakeriacompraproduto" do
    assert_difference('Temakeriacompraproduto.count', -1) do
      delete temakeriacompraproduto_url(@temakeriacompraproduto)
    end

    assert_redirected_to temakeriacompraprodutos_url
  end
end
