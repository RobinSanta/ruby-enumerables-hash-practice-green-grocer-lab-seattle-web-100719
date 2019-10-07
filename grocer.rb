def consolidate_cart(cart)
  count = 0
  new_cart = []
  cart.each do |element|
    element.each do |fruit, hash|
      new_cart[fruit] ||= hash
      organized_cart[fruit][:count] ||= 0
      organized_cart[fruit][:count] += 1
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
