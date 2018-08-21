class CashRegister
  attr_accessor :purchases, :discount, :total, :transaction

def initialize(discount = nil)
self.total = 0
self.purchases = []
self.discount = discount if discount != nil
end

def add_item(title, price, quantity=1)
  self.transaction = [name, price, quantity]
    quantity.times do
      self.purchases.push self.transaction[0]
      self.total += self.transaction[1]
    end
  end

  def items
    return self.purchases
  end

  def void_last_transaction
    quantity = self.transaction[2]
    quantity.times do
      self.purchases.pop
      self.total -= self.transaction[1]
    end
  end

end
