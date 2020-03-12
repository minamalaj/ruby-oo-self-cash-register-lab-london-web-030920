require 'pry'
class CashRegister 

    attr_accessor :total, :discount, :new_array

def initialize(discount = 0)
@total = 0
@discount = discount
@new_array = []
end 

def add_item(title, price, quantity = 1)
    item = {
        title: title,
        price: price, 
        quantity: quantity
    }
    @new_array << item
    @total += (price * quantity) 
end 

def apply_discount
    if @discount > 0 
        @total -= (@total * discount / 100) 
        "After the discount, the total comes to $#{@total}."
    else
        "There is no discount to apply."
    end 
end 

def items
    @new_array.map{|items| 
    names = [] 
    items[:quantity].times do names << items[:title]
end 
names}.flatten 
end 


def void_last_transaction 
@total -= @new_array[-1][:price] * @new_array[-1][:quantity]
@new_array.pop

end
end 