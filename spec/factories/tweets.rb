FactoryBot.define do
  factory :tweet do
    text {"Hello!"}
    image {"hoge.ping"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now)}
    user
  end
end