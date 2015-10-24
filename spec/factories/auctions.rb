FactoryGirl.define do
  factory :auction do
    association :organization, strategy: :build
    starts_at "2015-10-22 14:10:46"
    ends_at "2015-10-22 15:10:46"
    time_zone_id "America/New_York"
    physical_address "123 Main St\nAnytown, NY 21201 USA"
    name "2016 Charity Auction"
    donation_window_ends_at "2015-10-21 14:10:46"
  end
end
