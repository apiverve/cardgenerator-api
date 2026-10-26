/// Response models for the Test Card Generator API.

/// API Response wrapper.
class CardgeneratorResponse {
  final String status;
  final dynamic error;
  final CardgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CardgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CardgeneratorResponse.fromJson(Map<String, dynamic> json) => CardgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CardgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Test Card Generator API.

class CardgeneratorData {
  String? brand;
  num? count;
  List<CardgeneratorDataCardsItem>? cards;
  CardgeneratorDataOwner? owner;

  CardgeneratorData({
    this.brand,
    this.count,
    this.cards,
    this.owner,
  });

  factory CardgeneratorData.fromJson(Map<String, dynamic> json) => CardgeneratorData(
      brand: json['brand'],
      count: json['count'],
      cards: (json['cards'] as List?)?.map((e) => CardgeneratorDataCardsItem.fromJson(e)).toList(),
      owner: json['owner'] != null ? CardgeneratorDataOwner.fromJson(json['owner']) : null,
    );
}

class CardgeneratorDataCardsItem {
  num? cvv;
  String? issuer;
  String? id;
  String? number;
  String? expiration;
  String? brand;
  CardgeneratorDataCardsItemNumberAlt? numberAlt;

  CardgeneratorDataCardsItem({
    this.cvv,
    this.issuer,
    this.id,
    this.number,
    this.expiration,
    this.brand,
    this.numberAlt,
  });

  factory CardgeneratorDataCardsItem.fromJson(Map<String, dynamic> json) => CardgeneratorDataCardsItem(
      cvv: json['cvv'],
      issuer: json['issuer'],
      id: json['id'],
      number: json['number'],
      expiration: json['expiration'],
      brand: json['brand'],
      numberAlt: json['number_alt'] != null ? CardgeneratorDataCardsItemNumberAlt.fromJson(json['number_alt']) : null,
    );
}

class CardgeneratorDataCardsItemNumberAlt {
  String? masked;
  String? unmasked;
  String? last4;

  CardgeneratorDataCardsItemNumberAlt({
    this.masked,
    this.unmasked,
    this.last4,
  });

  factory CardgeneratorDataCardsItemNumberAlt.fromJson(Map<String, dynamic> json) => CardgeneratorDataCardsItemNumberAlt(
      masked: json['masked'],
      unmasked: json['unmasked'],
      last4: json['last4'],
    );
}

class CardgeneratorDataOwner {
  String? name;
  CardgeneratorDataOwnerAddress? address;
  String? avatar;

  CardgeneratorDataOwner({
    this.name,
    this.address,
    this.avatar,
  });

  factory CardgeneratorDataOwner.fromJson(Map<String, dynamic> json) => CardgeneratorDataOwner(
      name: json['name'],
      address: json['address'] != null ? CardgeneratorDataOwnerAddress.fromJson(json['address']) : null,
      avatar: json['avatar'],
    );
}

class CardgeneratorDataOwnerAddress {
  String? street;
  String? city;
  String? state;
  String? zipCode;

  CardgeneratorDataOwnerAddress({
    this.street,
    this.city,
    this.state,
    this.zipCode,
  });

  factory CardgeneratorDataOwnerAddress.fromJson(Map<String, dynamic> json) => CardgeneratorDataOwnerAddress(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zipCode: json['zipCode'],
    );
}

class CardgeneratorRequest {
  String? brand;
  int? count;
  bool? includeAvatar;

  CardgeneratorRequest({
    this.brand,
    this.count,
    this.includeAvatar,
  });

  Map<String, dynamic> toJson() => {
      if (brand != null) 'brand': brand,
      if (count != null) 'count': count,
      if (includeAvatar != null) 'includeAvatar': includeAvatar,
    };
}
