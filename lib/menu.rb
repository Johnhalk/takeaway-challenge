class Menu

attr_reader :order_items

  def initialize
    @order_items = [{"curry" => 12.95}, {"burger" => 7.95}, {"pizza" => 13.95}]
  end

  def list_items
    puts order_items
  end
end
