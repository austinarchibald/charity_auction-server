FactoryGirl.define do
  factory :user do
    name "Austin Archibald"
    sequence(:mobile_phone_number) { |n| "+180055555#{n}"}
    sequence(:email_address) { |n| "test-#{n}@test.com"}
    physical_address "123 Main St\nAnytown, NY 12121 USA"
  end

end
