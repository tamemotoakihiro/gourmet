# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    content "MyString"
    shop_id 1
    author_id 1
  end
end
