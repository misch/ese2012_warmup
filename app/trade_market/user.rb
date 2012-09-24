module TradeMarket

  class User
    attr_accessor :name, :amount_of_credits, :items

    def initialize (name)
      self.name = name
      self.amount_of_credits = 100
      self.items = Array.new
    end

  # @param [String] name
  # @param [String] price
  # @return [Item]
    def add_item(name,price)
      new_item = Item.new(name, price, self)
      items.push(new_item)
    end

    def remove_item(item)
      items.delete(item)
    end

    def list_active_items()
      items.each do |item|
        if item.active?()
          puts "#{item.name} (#{item.price})"
        end
      end
    end

  # @param [User] seller
  # @param [Item] item
    def buy_item(seller, item)

      transact_credits(self,seller, item.price)

      item.change_owner(self)

      self.items.push(item)
      seller.items.delete(item)
    end

    def transact_credits(giver, taker, amount)
      giver.amount_of_credits -= amount
      taker.amount_of_credits += amount
    end
  end
end