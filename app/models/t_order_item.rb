class T_order_item < ActiveRecord::Base
  belongs_to :t_order, :foreign_key  => "ORDER_ID", :class_name => "T_order"
  self.table_name="T_ORDER_ITEM"


end
