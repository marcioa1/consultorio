require 'test_helper'

class TestesControllerTest < ActionController::TestCase
  setup do
    @testis = testes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testis" do
    assert_difference('Teste.count') do
      post :create, :testis => @testis.attributes
    end

    assert_redirected_to testis_path(assigns(:testis))
  end

  test "should show testis" do
    get :show, :id => @testis.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @testis.to_param
    assert_response :success
  end

  test "should update testis" do
    put :update, :id => @testis.to_param, :testis => @testis.attributes
    assert_redirected_to testis_path(assigns(:testis))
  end

  test "should destroy testis" do
    assert_difference('Teste.count', -1) do
      delete :destroy, :id => @testis.to_param
    end

    assert_redirected_to testes_path
  end
end
