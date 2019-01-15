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
  coupons.each do |coupon|
    if cart.has_key?(coupon[:item]) && cart[coupon[:item]][:count] >= coupon[:num]
      item_withcoupon = coupon[:item] + " W/COUPON"
      if cart.has_key?(item_withcoupon)
        cart[item_withcoupon][:count] += 1
      else
        cart[item_withcoupon] = {price: coupon[:cost], clearance: cart[coupon[:item]][:clearance], count: 1}
      end
      cart[coupon[:item]][:count] -= coupon[:num]
    end
  end
  cart
end

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
