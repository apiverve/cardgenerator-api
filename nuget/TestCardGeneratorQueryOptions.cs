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
    }
}
