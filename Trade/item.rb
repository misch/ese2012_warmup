class Item
  # To change this template use File | Settings | File Templates.
  attr_accessor :name, :price, :state, :owner

  def initialize(name,price,owner)
    self.name = name
    self.price = price
    self.state = "inactive"
    self.owner = owner
  end
end