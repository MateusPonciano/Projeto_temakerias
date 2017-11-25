require 'test_helper'

class ArmazenasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armazena = armazenas(:one)
  end

  test "should get index" do
    get armazenas_url
    assert_response :success
  end

  test "should get new" do
    get new_armazena_url
    assert_response :success
  end

  test "should create armazena" do
    assert_difference('Armazena.count') do
      post armazenas_url, params: { armazena: { cnpj: @armazena.cnpj, codbarras: @armazena.codbarras, quantidade: @armazena.quantidade } }
    end

    assert_redirected_to armazena_url(Armazena.last)
  end

  test "should show armazena" do
    get armazena_url(@armazena)
    assert_response :success
  end

  test "should get edit" do
    get edit_armazena_url(@armazena)
    assert_response :success
  end

  test "should update armazena" do
    patch armazena_url(@armazena), params: { armazena: { cnpj: @armazena.cnpj, codbarras: @armazena.codbarras, quantidade: @armazena.quantidade } }
    assert_redirected_to armazena_url(@armazena)
  end

  test "should destroy armazena" do
    assert_difference('Armazena.count', -1) do
      delete armazena_url(@armazena)
    end

    assert_redirected_to armazenas_url
  end
end
