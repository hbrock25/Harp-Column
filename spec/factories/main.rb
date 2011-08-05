
# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title 'Post #{sn}'
#     body  'Lorem ipsum...'
#   end

FactoryGirl.define do
  factory :user do
    name 'regular user'
    email 'test@test.com'
    password 'yadayada'
    password_confirmation 'yadayada'
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, :class => User do
    name 'harp admin'
    email 'blah@yada.com'
    password 'yadayada'
    password_confirmation 'yadayada'
    admin true
  end

  factory :address do
    line1         'line1'
    city          'Hood River'
    region        'Oregon'
    country_code  'US'
    postal_code   97031
  end

  factory :venue do
    name      'test venue'
    address
  end

  factory :performance do
    date DateTime.now
    user
    venue
  end

  factory :difficulty do
    name 'hard'
  end

  factory :piece do
    title 'test piece'
    user
    difficulty
  end

  factory :manufacturer do
    name 'test manufacturer'
  end

  factory :instrument do
    model 'test model'
    manufacturer
    user
  end

end
