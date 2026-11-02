using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.TestCardGenerator
{
    /// <summary>
    /// Query options for the Test Card Generator API
    /// </summary>
    public class TestCardGeneratorQueryOptions
    {
        /// <summary>
        /// The brand of the card to generate
        /// </summary>
        [JsonProperty("brand")]
        public string Brand { get; set; }

        /// <summary>
        /// The number of test card numbers to generate
        /// </summary>
        [JsonProperty("count")]
        public int? Count { get; set; }

        /// <summary>
        /// Include an AI-generated face avatar for the card owner
        /// </summary>
        [JsonProperty("includeAvatar")]
        public bool? IncludeAvatar { get; set; }

        /// <summary>
        /// Return this payment gateway's documented test cards instead of generated numbers. They trigger a known outcome in the gateway's test mode
        /// </summary>
        [JsonProperty("gateway")]
        public string Gateway { get; set; }

        /// <summary>
        /// With gateway: the outcome to test, such as success, declined, insufficient_funds, expired_card, incorrect_cvc, fraud or 3ds_required (Stripe). Decline scenarios are mostly Visa cards, so the brand is ignored when the gateway has none for it
        /// </summary>
        [JsonProperty("scenario")]
        public string Scenario { get; set; }
    }
}
