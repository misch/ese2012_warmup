require "test/unit"
require '../app/trade_market/user'
require '../app/trade_market/item'

#noinspection ALL
class TradeMarketTest < Test::Unit::TestCase

  def setup
    jane = TradeMarket::User.new('Jane')
    chair = TradeMarket::Item.new('chair',200,jane)
  end

  def test_user_has_name
    user = TradeMarket::User.new('Jane')
    name = user.name
    assert_not_equal(name,"", 'User has no name!')
  end


  def test_user_has_right_name
    user = TradeMarket::User.new('Jim')
    assert(user.name.eql?('Jim'), 'User has wrong name!')
  end

  def test_user_has_amount
    user = TradeMarket::User.new('Jim')
    assert(user.amount_of_credits.eql?(100), 'The set up amount should be 100!')
  end

  def test_item_has_name
    # To do
  end

  def test_item_has_price
    item = TradeMarket::Item.new('guitar', 243, TradeMarket::User.new('Hendrix'))
    assert(item.price.eql?(243),'Price of item should be 243!')
  end

  def test_item_has_owner
    # To do
  end

  def test_item_has_state
    # To do
  end

  def test_user_cant_buy_item
    hendrix = TradeMarket::User.new('Hendrix')
    bobby = TradeMarket::User.new('Bobby')

    guitar = TradeMarket::Item.new("guitar",243,hendrix)
    guitar.state = 'active'
    assert(!guitar.can_be_bought?(bobby),"Bobby has not enough credits to buy Jimi's guitar!")
  end
  # ... More Tests to do ...
end