require 'test_helper'

class TipeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tipe.new.valid?
  end
end
