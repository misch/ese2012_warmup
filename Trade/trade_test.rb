require "test/unit"
require "item"
require "user"

class TradeTest < Test::Unit::TestCase

  def test_user_has_name
    user = User.new('Jane')
    name = user.name
    assert_not_equal(name,"", 'User has no name!')
  end

  def test_user_has_right_name
    user = User.new('Jim')
    assert(user.name.eql?('Jim'), 'User has wrong name!')
  end

   def test_user_has_amount
    user = User.new('Jim')
    assert(user.amount_of_credits.eql?(100), 'The set up amount should be 100!')
  end

  def test_item_has_name
   # To do
  end

  def test_item_has_price
    item = Item.new('guitar',243,User.new('Hendrix'))
    assert(item.price.eql?(243),'Price of item should be 243!')
  end

  def test_item_has_owner
    # To do
  end

  def test_item_has_state
    # To do
  end

  # ... More Tests to do ...

end