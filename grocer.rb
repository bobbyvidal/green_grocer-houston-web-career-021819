def consolidate_cart(cart)
  # code here
  consolidated = {}
  cart.each do |item|
  item.each do |key, value|
    if consolidated.has_key?(key)
      consolidated[key][:count] += 1
    else
      consolidated[key] = value
      consolidated[key][:count] = 1
    end
  end
end
consolidated
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
