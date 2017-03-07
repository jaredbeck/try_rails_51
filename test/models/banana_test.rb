require 'test_helper'

class BananaTest < ActiveSupport::TestCase
  test "fixtures are persisted" do
    assert 15, bananas(:small).grams
    assert 21, bananas(:medium).grams
  end
end
