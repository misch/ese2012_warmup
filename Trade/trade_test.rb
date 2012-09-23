require "test/unit"
require "item"
require "user"

class TradeTest < Test::Unit::TestCase

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def test_user_has_name
    user = User.new('Jane')
    name = user.name
    assert(name.eql?('Jane'), 'Student has wrong name')
  end

  # Fake test
#  def test_fail

    # To change this template use File | Settings | File Templates.
 #   fail("Not implemented")
 # end
end