# [Test Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Card Generator is a simple tool for generating test/sample card numbers. It returns a list of card numbers for testing.

The Test Card Generator API provides a simple, reliable way to integrate test card generator functionality into your applications. Built for developers who need production-ready test card generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/cardgenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/cardgenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/cardgenerator)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.TestCardGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-cardgenerator/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_cardgenerator)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/cardgenerator)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_cardgenerator)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callTestCardGeneratorAPI() {
    try {
        const params = new URLSearchParams({
            brand: 'visa'
        });

        const response = await fetch(`https://api.apiverve.com/v1/cardgenerator?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callTestCardGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/cardgenerator?brand=visa" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/cardgenerator
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/cardgenerator) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.TestCardGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.TestCardGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-cardgenerator
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-cardgenerator/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_cardgenerator
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_cardgenerator) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/cardgenerator
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/cardgenerator) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_cardgenerator
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_cardgenerator) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:cardgenerator-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/cardgenerator-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Test Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/cardgenerator](https://docs.apiverve.com/ref/cardgenerator)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Test Card Generator API is commonly used for:

- **Web Applications** - Add test card generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with test card generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Test Card Generator API:

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

---

## Support & Community

- 🏠 **API Home**: [Test Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
