def set_price brand, price_reference
  internal_factor = get_internal_factor(price_reference)
  external_factor = get_external_factor(brand.rating)
  price_original = (price_reference - product_database.shipping_cost * internal_factor) * external_factor
end

def get_external_factor brand_rating
  # Conditions in line 1 & 29 of the original file are incorrectly written:
  # 1) An assignment operator '=' is used instead of an equality operator '=='
  # 2) Ambiguous datatype of "high" and "low". In this case, they must be either strings or symbols
  case brand_rating
  when "high"
    1.1
  when "low"
    0.9
  else
    1
  end
end

def get_internal_factor price_reference
  case
  when price_reference < 15
    0.75
  when price_reference < 25
    0.775
  when price_reference < 50
    0.8
  when price_reference < 75
    0.825
  when price_reference < 100
    0.85
  when price_reference < 200
    0.875
  when price_reference < 400
    0.9
  when price_reference < 600
    0.925
  else
    0.95
  end
end
