/// Response models for the Card Generator API.

/// API Response wrapper.
class CardgeneratorResponse {
  final String status;
  final dynamic error;
  final CardgeneratorData? data;

  CardgeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CardgeneratorResponse.fromJson(Map<String, dynamic> json) => CardgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CardgeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Card Generator API.

class CardgeneratorData {
  String? brand;
  int? count;
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
  int? cvv;
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

  CardgeneratorDataOwner({
    this.name,
    this.address,
  });

  factory CardgeneratorDataOwner.fromJson(Map<String, dynamic> json) => CardgeneratorDataOwner(
      name: json['name'],
      address: json['address'] != null ? CardgeneratorDataOwnerAddress.fromJson(json['address']) : null,
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
  String brand;
  int? count;

  CardgeneratorRequest({
    required this.brand,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      'brand': brand,
      if (count != null) 'count': count,
    };
}
