class Api::V1::OrdersController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def orders
  	 endpoint_url = params[:endpoint_url]
  	 method = params[:method]
  	 parameter = params[:parameters]
  	 render json:true
  end
end