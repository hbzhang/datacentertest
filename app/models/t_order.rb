class T_order < ActiveRecord::Base

     has_many :t_order_items, :foreign_key  => "ORDER_ID", :class_name => "T_order_item"

     self.table_name="T_ORDER"

     def self.get_product_name
      @order = T_order.where(["CUSTOMER_FIRST_NAME = ? and CUSTOMER_LAST_NAME = ?",
      "Hokie","Demo"]).all

      @order.each do |o|
        puts o.t_order_items
      end

      #T_order_item.where(["CUSTOMER_FIRST_NAME = ? and CUSTOMER_LAST_NAME = ?",
      #"Hokie","Demo"]).all

      # where("t_order_item.ORDER_ID =?","ID").
     end

end
