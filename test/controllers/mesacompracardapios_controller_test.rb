require 'test_helper'

class MesacompracardapiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mesacompracardapio = mesacompracardapios(:one)
  end

  test "should get index" do
    get mesacompracardapios_url
    assert_response :success
  end

  test "should get new" do
    get new_mesacompracardapio_url
    assert_response :success
  end

  test "should create mesacompracardapio" do
    assert_difference('Mesacompracardapio.count') do
      post mesacompracardapios_url, params: { mesacompracardapio: { codcardapio: @mesacompracardapio.codcardapio, codigomesa: @mesacompracardapio.codigomesa, horarioentrada: @mesacompracardapio.horarioentrada, qtd: @mesacompracardapio.qtd } }
    end

    assert_redirected_to mesacompracardapio_url(Mesacompracardapio.last)
  end

  test "should show mesacompracardapio" do
    get mesacompracardapio_url(@mesacompracardapio)
    assert_response :success
  end

  test "should get edit" do
    get edit_mesacompracardapio_url(@mesacompracardapio)
    assert_response :success
  end

  test "should update mesacompracardapio" do
    patch mesacompracardapio_url(@mesacompracardapio), params: { mesacompracardapio: { codcardapio: @mesacompracardapio.codcardapio, codigomesa: @mesacompracardapio.codigomesa, horarioentrada: @mesacompracardapio.horarioentrada, qtd: @mesacompracardapio.qtd } }
    assert_redirected_to mesacompracardapio_url(@mesacompracardapio)
  end

  test "should destroy mesacompracardapio" do
    assert_difference('Mesacompracardapio.count', -1) do
      delete mesacompracardapio_url(@mesacompracardapio)
    end

    assert_redirected_to mesacompracardapios_url
  end
end
