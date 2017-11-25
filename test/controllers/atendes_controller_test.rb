require 'test_helper'

class AtendesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atende = atendes(:one)
  end

  test "should get index" do
    get atendes_url
    assert_response :success
  end

  test "should get new" do
    get new_atende_url
    assert_response :success
  end

  test "should create atende" do
    assert_difference('Atende.count') do
      post atendes_url, params: { atende: { codigomesa: @atende.codigomesa, cpf_garcom: @atende.cpf_garcom, horarioentrada: @atende.horarioentrada } }
    end

    assert_redirected_to atende_url(Atende.last)
  end

  test "should show atende" do
    get atende_url(@atende)
    assert_response :success
  end

  test "should get edit" do
    get edit_atende_url(@atende)
    assert_response :success
  end

  test "should update atende" do
    patch atende_url(@atende), params: { atende: { codigomesa: @atende.codigomesa, cpf_garcom: @atende.cpf_garcom, horarioentrada: @atende.horarioentrada } }
    assert_redirected_to atende_url(@atende)
  end

  test "should destroy atende" do
    assert_difference('Atende.count', -1) do
      delete atende_url(@atende)
    end

    assert_redirected_to atendes_url
  end
end
