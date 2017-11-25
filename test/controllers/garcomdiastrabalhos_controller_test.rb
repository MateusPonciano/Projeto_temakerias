require 'test_helper'

class GarcomdiastrabalhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garcomdiastrabalho = garcomdiastrabalhos(:one)
  end

  test "should get index" do
    get garcomdiastrabalhos_url
    assert_response :success
  end

  test "should get new" do
    get new_garcomdiastrabalho_url
    assert_response :success
  end

  test "should create garcomdiastrabalho" do
    assert_difference('Garcomdiastrabalho.count') do
      post garcomdiastrabalhos_url, params: { garcomdiastrabalho: { cpf: @garcomdiastrabalho.cpf, diastrabalho: @garcomdiastrabalho.diastrabalho } }
    end

    assert_redirected_to garcomdiastrabalho_url(Garcomdiastrabalho.last)
  end

  test "should show garcomdiastrabalho" do
    get garcomdiastrabalho_url(@garcomdiastrabalho)
    assert_response :success
  end

  test "should get edit" do
    get edit_garcomdiastrabalho_url(@garcomdiastrabalho)
    assert_response :success
  end

  test "should update garcomdiastrabalho" do
    patch garcomdiastrabalho_url(@garcomdiastrabalho), params: { garcomdiastrabalho: { cpf: @garcomdiastrabalho.cpf, diastrabalho: @garcomdiastrabalho.diastrabalho } }
    assert_redirected_to garcomdiastrabalho_url(@garcomdiastrabalho)
  end

  test "should destroy garcomdiastrabalho" do
    assert_difference('Garcomdiastrabalho.count', -1) do
      delete garcomdiastrabalho_url(@garcomdiastrabalho)
    end

    assert_redirected_to garcomdiastrabalhos_url
  end
end
