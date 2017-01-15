require_relative 'menu'

class Takeaway

  attr_reader :add_order


  def initialize
    @menu = Menu.new
    @order = []
  end

  def list_items
    @menu.order_items
  end

  def add_order( dish, amount =1)
    message = "Item not available from menu, please select another"
    raise message  unless dish_exist?(dish)
    amount.times {@order <<  dish}
    "#{amount} #{dish} added to order"
  end

  def show_order
    puts @order
  end
  private

  def dish_exist?(dish)
    list_items.any? {|hash| hash[dish]}
  end

end
