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
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
