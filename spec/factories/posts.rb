FactoryBot.define do
  factory :post do
    title { 'test' }
    aimble_fish { 'test' }
    time_zone_id { 2 }
    trick { 'test' }
    comment { 'test' }
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
  end
end
