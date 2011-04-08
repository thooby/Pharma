require 'test_helper'

class ProduitTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Produit.new.valid?
  end
end
