require 'test_helper'

class TelfuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telfuncionario = telfuncionarios(:one)
  end

  test "should get index" do
    get telfuncionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_telfuncionario_url
    assert_response :success
  end

  test "should create telfuncionario" do
    assert_difference('Telfuncionario.count') do
      post telfuncionarios_url, params: { telfuncionario: { cpf: @telfuncionario.cpf, telefone: @telfuncionario.telefone } }
    end

    assert_redirected_to telfuncionario_url(Telfuncionario.last)
  end

  test "should show telfuncionario" do
    get telfuncionario_url(@telfuncionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_telfuncionario_url(@telfuncionario)
    assert_response :success
  end

  test "should update telfuncionario" do
    patch telfuncionario_url(@telfuncionario), params: { telfuncionario: { cpf: @telfuncionario.cpf, telefone: @telfuncionario.telefone } }
    assert_redirected_to telfuncionario_url(@telfuncionario)
  end

  test "should destroy telfuncionario" do
    assert_difference('Telfuncionario.count', -1) do
      delete telfuncionario_url(@telfuncionario)
    end

    assert_redirected_to telfuncionarios_url
  end
end
