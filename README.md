# Blazer::Api
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'blazer-api'
```

And then execute:
```bash
$ bundle
```

We use the same env var that blazer uses to connect the database:

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

And mount on `config/routes.rb`:

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
