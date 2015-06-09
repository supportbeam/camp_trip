FactoryGirl.define do
  factory :review do
    comment "This is an excellent campground! I highly recommend it!"
    camp_id 1
    user_id 1
  end
end