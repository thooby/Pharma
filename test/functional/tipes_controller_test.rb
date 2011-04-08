require 'test_helper'

class TipesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Tipe.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Tipe.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tipe.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tipe_url(assigns(:tipe))
  end

  def test_edit
    get :edit, :id => Tipe.first
    assert_template 'edit'
  end

  def test_update_invalid
    Tipe.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tipe.first
    assert_template 'edit'
  end

  def test_update_valid
    Tipe.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tipe.first
    assert_redirected_to tipe_url(assigns(:tipe))
  end

  def test_destroy
    tipe = Tipe.first
    delete :destroy, :id => tipe
    assert_redirected_to tipes_url
    assert !Tipe.exists?(tipe.id)
  end
end
