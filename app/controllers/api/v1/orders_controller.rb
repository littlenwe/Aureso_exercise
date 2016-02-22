class Api::V1::OrdersController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  
  def orders
     order_id = params[:order_id]
     email = params[:email]
     total_amount_net = params[:total_amount_net]
     shipping_costs = params[:shipping_costs]
     items = params[:items]
  	 discount_value = Order.calculate_discount(order_id,email,total_amount_net,shipping_costs,items)
  	 str = {:discount_value => discount_value}
  	 render json: str
  end
end