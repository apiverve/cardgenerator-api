# Card Generator API - Dart/Flutter Client

Card Generator is a simple tool for generating test/sample card numbers. It returns a list of card numbers for testing.

[![pub package](https://img.shields.io/pub/v/apiverve_cardgenerator.svg)](https://pub.dev/packages/apiverve_cardgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_cardgenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_cardgenerator/apiverve_cardgenerator.dart';

void main() async {
  final client = CardgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'brand': 'visa',
      'count': 1
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "brand": "visa",
    "count": 5,
    "cards": [
      {
        "cvv": 798,
        "issuer": "BANCO BILBAO VIZCAYA ARGENTARIA PARAGUAY, S.A.",
        "id": "c5805305-62df-43d8-bdfd-ac72b459cc64",
        "number": "4236228422790803",
        "expiration": "05/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************0803",
          "unmasked": "4236 2284 2279 0803",
          "last4": "0803"
        }
      },
      {
        "cvv": 284,
        "issuer": "IDBI BANK, LTD.",
        "id": "6a9d0686-6390-40d3-81a9-83cb7da1e1e1",
        "number": "4581393917480061",
        "expiration": "05/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************0061",
          "unmasked": "4581 3939 1748 0061",
          "last4": "0061"
        }
      },
      {
        "cvv": 184,
        "issuer": "CREDIT SAISON CO., LTD.",
        "id": "97e9a5cb-0bd1-46d5-b486-61caf7692155",
        "number": "4541313270704781",
        "expiration": "05/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************4781",
          "unmasked": "4541 3132 7070 4781",
          "last4": "4781"
        }
      },
      {
        "cvv": 649,
        "issuer": "CARD SERVICES FOR CREDIT UNIONS, INC.",
        "id": "013f5e59-5c1a-4c92-a2a7-171384de2416",
        "number": "4148851836478785",
        "expiration": "05/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************8785",
          "unmasked": "4148 8518 3647 8785",
          "last4": "8785"
        }
      },
      {
        "cvv": 161,
        "issuer": "JPMORGAN CHASE BANK, N.A.",
        "id": "d4cf0704-7c48-4221-bcae-53c676261487",
        "number": "4867963822584424",
        "expiration": "05/2030",
        "brand": "visa",
        "number_alt": {
          "masked": "************4424",
          "unmasked": "4867 9638 2258 4424",
          "last4": "4424"
        }
      }
    ],
    "owner": {
      "name": "Herman Gulgowski",
      "address": {
        "street": "3659 Konopelski Coves",
        "city": "Schmittburgh",
        "state": "Utah",
        "zipCode": "01681-6561"
      }
    }
  }
}
```

## API Reference

- **API Home:** [Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/cardgenerator](https://docs.apiverve.com/ref/cardgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
