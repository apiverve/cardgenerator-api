# Test Card Generator API - Ruby Gem

Test Card Generator creates card numbers that pass format and checksum validation, for testing checkout forms and payment UIs across major networks. They aren't real cards: no bank issued them, and they can't be charged or used to buy anything. Specify a brand to receive card numbers, security codes, expiration dates, issuers, and masked strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_cardgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_cardgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_cardgenerator'

# Initialize the client
client = APIVerve::Cardgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  brand: "visa",
  count: 1,
  includeAvatar: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ brand: "visa", count: 1, includeAvatar: true })
  puts response["data"]
rescue APIVerve::Cardgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Cardgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Cardgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "brand": "visa",
    "count": 5,
    "cards": [
      {
        "cvv": 175,
        "issuer": "SOUTHEAST F.C.U.",
        "id": "0faca124-9a33-4ac6-a3df-8bf103025779",
        "number": "4750377207233152",
        "expiration": "12/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************3152",
          "unmasked": "4750 3772 0723 3152",
          "last4": "3152"
        }
      },
      {
        "cvv": 129,
        "issuer": "U.S. BANK, N.A.",
        "id": "0d074efe-69e2-4e30-b49a-4cead1ea8411",
        "number": "4431387818727358",
        "expiration": "12/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************7358",
          "unmasked": "4431 3878 1872 7358",
          "last4": "7358"
        }
      },
      {
        "cvv": 249,
        "issuer": "AUGUSTA VAH F.C.U.",
        "id": "2f01f458-7422-400e-bbcf-41364564193b",
        "number": "4425919427248836",
        "expiration": "12/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************8836",
          "unmasked": "4425 9194 2724 8836",
          "last4": "8836"
        }
      },
      {
        "cvv": 892,
        "issuer": "CITIZENS SECURITY BANK AND TRUST COMPANY",
        "id": "d311e9d0-f410-4f75-a21f-f14125c88cbb",
        "number": "4127737519045634",
        "expiration": "12/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************5634",
          "unmasked": "4127 7375 1904 5634",
          "last4": "5634"
        }
      },
      {
        "cvv": 524,
        "issuer": "CREDIT LIBANAIS S.A.L.",
        "id": "64113f4d-c625-43d2-9d82-04f220c9e26f",
        "number": "4741441509416816",
        "expiration": "12/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************6816",
          "unmasked": "4741 4415 0941 6816",
          "last4": "6816"
        }
      }
    ],
    "owner": {
      "name": "Benny Swaniawski",
      "address": {
        "street": "007 Nelson Mountains",
        "city": "Margueriteton",
        "state": "Washington",
        "zipCode": "39956-7950"
      },
      "avatar": "https://storage.googleapis.com/apiverve/APIResources/faces/Male/30-40/12345678.jpg?X-Goog-Signature=..."
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/cardgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/cardgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/cardgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
