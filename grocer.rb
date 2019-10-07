def consolidate_cart(cart)
  new_cart = {}
  count = 0
  cart.each do |element|
    element.each do |fruit, hash|
      new_cart[fruit] ||= hash
      new_cart[fruit][:count] ||= 0
      new_cart[fruit][:count] += 1
    end
  end
  return new_cart
end

def apply_coupons(cart, coupons)
    hash = cart
  coupons.each do |coupon_hash|
    item = coupon_hash[:item]
    if !hash[item].nil? && hash[item][:count] >= coupon_hash[:num]
      temp = {"#{item} W/COUPON" => {
        :price => coupon_hash[:cost],
        :clearance => hash[item][:clearance],
        :count => 1
        }
      }
      if hash["#{item} W/COUPON"].nil?
        hash.merge!(temp)
      else
        #hash["#{item} W/COUPON"][:count] += 1
        hash["#{item} W/COUPON"][:price] += coupon_hash[:cost]
      end
      hash[item][:count] -= coupon_hash[:num]
    end
  end
  hash
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
