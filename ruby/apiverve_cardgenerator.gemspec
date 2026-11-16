# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_cardgenerator"
  spec.version       = "1.2.6"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Test Card Generator API - Ruby Client"
  spec.description   = "Test Card Generator is a test credit card generator API: it creates card numbers that pass format and Luhn checksum validation, for testing checkout forms and payment UIs across Visa, Mastercard, Amex, Discover, JCB, Diners Club and UnionPay. They aren't real cards: no bank issued them, and they can't be charged or used to buy anything. Each card comes with a security code, expiration date, issuer and masked number, and the gateway option returns Stripe's or Braintree's own documented test cards instead."
  spec.homepage      = "https://apiverve.com/marketplace/cardgenerator?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/cardgenerator-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/cardgenerator"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
