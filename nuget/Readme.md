TestCardGenerator API
============

Card Generator is a simple tool for generating test/sample card numbers. It returns a list of card numbers for testing.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [TestCardGenerator API](https://apiverve.com/marketplace/cardgenerator?utm_source=nuget&utm_medium=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.TestCardGenerator
```

Using the Package Manager:
```
nuget install APIVerve.API.TestCardGenerator
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.TestCardGenerator
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.TestCardGenerator"
5. Click on the APIVerve.API.TestCardGenerator package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the cardgenerator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.TestCardGenerator;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The TestCardGenerator API documentation is found here: [https://docs.apiverve.com/ref/cardgenerator](https://docs.apiverve.com/ref/cardgenerator?utm_source=nuget&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
TestCardGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.TestCardGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.TestCardGenerator;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.TestCardGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.TestCardGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new TestCardGeneratorQueryOptions {
    Brand = "visa",
    Count = 1,
    IncludeAvatar = true
};

using (var apiClient = new TestCardGeneratorAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
