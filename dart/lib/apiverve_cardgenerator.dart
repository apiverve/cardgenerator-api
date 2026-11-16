/// Test Card Generator API client for Dart/Flutter
///
/// Test Card Generator is a test credit card generator API: it creates card numbers that pass format and Luhn checksum validation, for testing checkout forms and payment UIs across Visa, Mastercard, Amex, Discover, JCB, Diners Club and UnionPay. They aren't real cards: no bank issued them, and they can't be charged or used to buy anything. Each card comes with a security code, expiration date, issuer and masked number, and the gateway option returns Stripe's or Braintree's own documented test cards instead.
///
/// For more information, visit: https://apiverve.com/marketplace/cardgenerator?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_cardgenerator;

export 'src/client.dart';
export 'src/models.dart';
