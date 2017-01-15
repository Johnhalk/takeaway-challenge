class Menu

attr_reader :order_items
attr_accessor :list_items

  def initialize
    @order_items = [{"curry" => 12.95}, {"burger" => 7.95}, {"pizza" => 13.95}]
  end
  
end
