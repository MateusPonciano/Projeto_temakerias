require 'test_helper'

class TemakeriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temakerium = temakeria(:one)
  end

  test "should get index" do
    get temakeria_url
    assert_response :success
  end

  test "should get new" do
    get new_temakerium_url
    assert_response :success
  end

  test "should create temakerium" do
    assert_difference('Temakerium.count') do
      post temakeria_url, params: { temakerium: { cep: @temakerium.cep, cnpj: @temakerium.cnpj, cnpj_matriz: @temakerium.cnpj_matriz, cpf_adm: @temakerium.cpf_adm, despesas: @temakerium.despesas, faturamento: @temakerium.faturamento, nome: @temakerium.nome, numero: @temakerium.numero, string: @temakerium.string } }
    end

    assert_redirected_to temakerium_url(Temakerium.last)
  end

  test "should show temakerium" do
    get temakerium_url(@temakerium)
    assert_response :success
  end

  test "should get edit" do
    get edit_temakerium_url(@temakerium)
    assert_response :success
  end

  test "should update temakerium" do
    patch temakerium_url(@temakerium), params: { temakerium: { cep: @temakerium.cep, cnpj: @temakerium.cnpj, cnpj_matriz: @temakerium.cnpj_matriz, cpf_adm: @temakerium.cpf_adm, despesas: @temakerium.despesas, faturamento: @temakerium.faturamento, nome: @temakerium.nome, numero: @temakerium.numero, string: @temakerium.string } }
    assert_redirected_to temakerium_url(@temakerium)
  end

  test "should destroy temakerium" do
    assert_difference('Temakerium.count', -1) do
      delete temakerium_url(@temakerium)
    end

    assert_redirected_to temakeria_url
  end
end
