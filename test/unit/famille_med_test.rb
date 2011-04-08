require 'test_helper'

class FamilleMedTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FamilleMed.new.valid?
  end
end
