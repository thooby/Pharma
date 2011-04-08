require 'test_helper'

class ProduitsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Produit.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Produit.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Produit.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to produit_url(assigns(:produit))
  end

  def test_edit
    get :edit, :id => Produit.first
    assert_template 'edit'
  end

  def test_update_invalid
    Produit.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Produit.first
    assert_template 'edit'
  end

  def test_update_valid
    Produit.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Produit.first
    assert_redirected_to produit_url(assigns(:produit))
  end

  def test_destroy
    produit = Produit.first
    delete :destroy, :id => produit
    assert_redirected_to produits_url
    assert !Produit.exists?(produit.id)
  end
end
