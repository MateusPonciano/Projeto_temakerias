require 'test_helper'

class DependesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @depende = dependes(:one)
  end

  test "should get index" do
    get dependes_url
    assert_response :success
  end

  test "should get new" do
    get new_depende_url
    assert_response :success
  end

  test "should create depende" do
    assert_difference('Depende.count') do
      post dependes_url, params: { depende: { cpf_func: @depende.cpf_func, datanasc: @depende.datanasc, nome: @depende.nome, relacao: @depende.relacao, sexo: @depende.sexo } }
    end

    assert_redirected_to depende_url(Depende.last)
  end

  test "should show depende" do
    get depende_url(@depende)
    assert_response :success
  end

  test "should get edit" do
    get edit_depende_url(@depende)
    assert_response :success
  end

  test "should update depende" do
    patch depende_url(@depende), params: { depende: { cpf_func: @depende.cpf_func, datanasc: @depende.datanasc, nome: @depende.nome, relacao: @depende.relacao, sexo: @depende.sexo } }
    assert_redirected_to depende_url(@depende)
  end

  test "should destroy depende" do
    assert_difference('Depende.count', -1) do
      delete depende_url(@depende)
    end

    assert_redirected_to dependes_url
  end
end
