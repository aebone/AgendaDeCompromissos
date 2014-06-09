require 'test_helper'

class CompromissosControllerTest < ActionController::TestCase
  setup do
    @compromisso = compromissos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compromissos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compromisso" do
    assert_difference('Compromisso.count') do
      post :create, compromisso: { date: @compromisso.date, texto: @compromisso.texto, titulo: @compromisso.titulo }
    end

    assert_redirected_to compromisso_path(assigns(:compromisso))
  end

  test "should show compromisso" do
    get :show, id: @compromisso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compromisso
    assert_response :success
  end

  test "should update compromisso" do
    patch :update, id: @compromisso, compromisso: { date: @compromisso.date, texto: @compromisso.texto, titulo: @compromisso.titulo }
    assert_redirected_to compromisso_path(assigns(:compromisso))
  end

  test "should destroy compromisso" do
    assert_difference('Compromisso.count', -1) do
      delete :destroy, id: @compromisso
    end

    assert_redirected_to compromissos_path
  end
end
