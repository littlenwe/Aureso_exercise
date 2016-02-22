class Order < ActiveRecord::Base
	has_many :items
	
	def self.calculate_discount(order_id,email,total_amount_net,shipping_costs,items)
		discount = 0.0
		items.each do |item|
			if total_amount_net > 149.00.to_f
				if item['collection_id'] > 10
					discount = method_prestiage(item)
				end
			else
				if item['collection_id'] < 10
					discount = method_fixed(item)
				end
			end
		end
		result = check_max_discount(discount,shipping_costs)
		return result
	end

	def method_prestiage(item)
		p_discount = item['value'] * 50 / 100
		return p_discount
	end

	def method_fixed(item)
		f_discout = item['value'] * 5 / 100
		return f_discount
	end

	def check_max_discount(discount,shipping_costs)
	   max_amount = (shipping_costs.to_f * 25 )/ 100
	   if shipping_costs > max_amount
	   		return max_amount
	   	else
	   		return shipping_costs
	   end
	end
end
