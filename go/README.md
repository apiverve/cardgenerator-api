# Card Generator API - Go Client

Card Generator is a simple tool for generating test/sample card numbers. It returns a list of card numbers for testing.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/cardgenerator-api/go
```

---

## Configuration

Before using the Card Generator API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Card Generator API documentation is found here: [https://docs.apiverve.com/ref/cardgenerator](https://docs.apiverve.com/ref/cardgenerator?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/cardgenerator-api/go"
)

func main() {
    // Create a new client
    client := cardgenerator.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "brand": "visa",
        "count": 1
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
