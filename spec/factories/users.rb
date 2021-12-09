FactoryBot.define do
  factory :user do
    nickname {'test'}
    email {Faker::Internet.free_email}
    password {'aa0000'}
    password_confirmation {password}
    last_name {'鈴木'}
    first_name {'太郎'}
    birthday {'1950-01-01'}

  end
end