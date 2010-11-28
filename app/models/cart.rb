class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  
  def paypal_url(return_url)  
    values = {  
      :business => 'seller_1290899571_biz@gmail.com',  
      :cmd => '_cart',  
      :upload => 1,  
      :return => return_url,  
      :invoice => id  
    }  

    line_items.each_with_index do |item, index|  
      values.merge!({  
        "amount_#{index + 1}"      => item.unit_price,  
        "item_name_#{index + 1}"   => item.product.name,  
        "item_number_#{index + 1}" => item.product.identifier,  
        "quantity_#{index + 1}"    => item.quantity  
      })  
    end 
     
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.map { |k,v| "#{k}=#{v}"  }.join("&")  
  end
  
end