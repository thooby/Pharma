require 'test_helper'

class FamilleMedsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => FamilleMed.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    FamilleMed.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    FamilleMed.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to famille_med_url(assigns(:famille_med))
  end

  def test_edit
    get :edit, :id => FamilleMed.first
    assert_template 'edit'
  end

  def test_update_invalid
    FamilleMed.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FamilleMed.first
    assert_template 'edit'
  end

  def test_update_valid
    FamilleMed.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FamilleMed.first
    assert_redirected_to famille_med_url(assigns(:famille_med))
  end

  def test_destroy
    famille_med = FamilleMed.first
    delete :destroy, :id => famille_med
    assert_redirected_to famille_meds_url
    assert !FamilleMed.exists?(famille_med.id)
  end
end
