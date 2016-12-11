# Validiso

Validate ISO Countries by Code, Alpha2 or Alpha3

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validiso'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validiso

## Usage

Search by code

```ruby
Validiso::Countries.find_code('971')
```

Search by alpha2

```ruby
Validiso::Countries.find_alpha2('AE')
```

Search by alpha3

```ruby
Validiso::Countries.find_alpha3('ARE')
```

It will return nil if not exist, but if success it will return the following object

```json
  {
    "country_code": "971",
    "alpha2": "AE",
    "alpha3": "ARE",
    "name": "United Arab Emirates",
    "continent": "Asia"
  }
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

