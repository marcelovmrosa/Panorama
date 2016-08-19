require 'test_helper'

class FormalizacaosControllerTest < ActionController::TestCase
  setup do
    @formalizacao = formalizacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formalizacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formalizacao" do
    assert_difference('Formalizacao.count') do
      post :create, formalizacao: { aluno_id: @formalizacao.aluno_id, data: @formalizacao.data, justificativa: @formalizacao.justificativa, motivo: @formalizacao.motivo, tema: @formalizacao.tema, validacao: @formalizacao.validacao }
    end

    assert_redirected_to formalizacao_path(assigns(:formalizacao))
  end

  test "should show formalizacao" do
    get :show, id: @formalizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formalizacao
    assert_response :success
  end

  test "should update formalizacao" do
    patch :update, id: @formalizacao, formalizacao: { aluno_id: @formalizacao.aluno_id, data: @formalizacao.data, justificativa: @formalizacao.justificativa, motivo: @formalizacao.motivo, tema: @formalizacao.tema, validacao: @formalizacao.validacao }
    assert_redirected_to formalizacao_path(assigns(:formalizacao))
  end

  test "should destroy formalizacao" do
    assert_difference('Formalizacao.count', -1) do
      delete :destroy, id: @formalizacao
    end

    assert_redirected_to formalizacaos_path
  end
end
