# Test Card Generator API - PHP Package

Card Generator is a simple tool for generating test/sample card numbers. It returns a list of card numbers for testing.

## Installation

Install via Composer:

```bash
composer require apiverve/cardgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Cardgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'brand' => 'visa',
    'count' => 1,
    'includeAvatar' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Cardgenerator\Client;
use APIVerve\Cardgenerator\Exceptions\APIException;
use APIVerve\Cardgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['brand' => 'visa', 'count' => 1, 'includeAvatar' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/cardgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/cardgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/cardgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
