# Blazer::Api
Blazer is an awesome Bl tool that we use at Nexoos.

We decided to build some custom charts and reports, and have access to blazer queries through an API will help us a lot.

## Usage

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'blazer-api'
```

And then execute:
```bash
$ bundle
```

We use the same ENV var that blazer uses to connect the database:

```ruby
ENV["BLAZER_DATABASE_URL"] = "postgres://user:password@hostname:5432/database"
```

Optionaly, you can create a initializer to handle authentication:

```ruby
# config/initializers/blazer-api.rb

Blazer::Api.configure do |config|
  config.authentication = -> (token, options) {
    Admin.find_by(api_key: token)
  }
end
```

We currently support token authentication, only.

You'll also need to setup `config/routes.rb`:

```ruby
Rails.application.routes.draw do
  mount Blazer::Api::Engine, at: 'blazer-api'
  ...
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
