# Test Card Generator API

Card Generator is a simple tool for generating test/sample card numbers. It returns a list of card numbers for testing.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/cardgenerator.svg)](https://www.npmjs.com/package/@apiverve/cardgenerator)

This is a Javascript Wrapper for the [Test Card Generator API](https://apiverve.com/marketplace/cardgenerator?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/cardgenerator
```

Using yarn:
```shell
yarn add @apiverve/cardgenerator
```

---

## Configuration

Before using the Test Card Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Test Card Generator API documentation is found here: [https://docs.apiverve.com/ref/cardgenerator](https://docs.apiverve.com/ref/cardgenerator?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const cardgeneratorAPI = require('@apiverve/cardgenerator');
const api = new cardgeneratorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  brand: "visa",
  count: 1,
  includeAvatar: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  brand: "visa",
  count: 1,
  includeAvatar: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  brand: "visa",
  count: 1,
  includeAvatar: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
