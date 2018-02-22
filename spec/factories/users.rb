FactoryGirl.define do
  factory :user do
    first_name 'first_name'
    last_name 'last_name'
    email 'mail@gmail.com'
    confirmed false
    token '000000000000000000000000000000'
    password 'password'
    password_confirmation 'password'
  end
end