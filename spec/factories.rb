Factory.define :user do |user|
  user.name                   "Example"
  user.email                  "user@example.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end