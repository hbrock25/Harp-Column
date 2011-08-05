require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

User.blueprint do
  name { "Clark Kent" }
  email  { "clark@kent.com" }
  password { "superman!" }
  password_confirmation { "superman!" }
end


Address.blueprint do
  line1         {"1000 Main ST"}
  city          {"Orlando"}
  region        {"FL"}
  country_code  {"US"}
  postal_code   {"40221"}
end  