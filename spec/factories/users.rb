FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "hello#{n}@goodbye.com" }
    password { "xxxyyyzzz" }
  end
end
