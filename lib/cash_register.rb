class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times do 
            self.items.push(title)
        end
    end


    def apply_discount
        if self.discount != 0
            discount_percent = (100.0 - self.discount ) / 100.0
            self.total = (self.total * discount_percent).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end


end
