require 'test_helper'

class GarcomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garcom = garcoms(:one)
  end

  test "should get index" do
    get garcoms_url
    assert_response :success
  end

  test "should get new" do
    get new_garcom_url
    assert_response :success
  end

  test "should create garcom" do
    assert_difference('Garcom.count') do
      post garcoms_url, params: { garcom: { cpf: @garcom.cpf } }
    end

    assert_redirected_to garcom_url(Garcom.last)
  end

  test "should show garcom" do
    get garcom_url(@garcom)
    assert_response :success
  end

  test "should get edit" do
    get edit_garcom_url(@garcom)
    assert_response :success
  end

  test "should update garcom" do
    patch garcom_url(@garcom), params: { garcom: { cpf: @garcom.cpf } }
    assert_redirected_to garcom_url(@garcom)
  end

  test "should destroy garcom" do
    assert_difference('Garcom.count', -1) do
      delete garcom_url(@garcom)
    end

    assert_redirected_to garcoms_url
  end
end
