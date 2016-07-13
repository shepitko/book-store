FactoryGirl.define do
  factory :order do
    sum "9.99"  
    factory :order_in_progress do
      state 0
    end
    factory  :order_in_queue do
      state 1
    end
    factory  :order_in_delivery do
      state 2
    end
    factory  :order_delivered do
      state 3
    end
    factory  :canceled do
      state 4
    end
    delivery nil
    coupon nil
    address nil
  end
end
