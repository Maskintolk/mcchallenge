class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  String street;
  String suite;
  String city;
  String zipcode;

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['street'] ?? '',
      suite: map['suite'] ?? '',
      city: map['city'] ?? '',
      zipcode: map['zipcode'] ?? '',

      // I'm skipping geo here. It would follow the same pattern as the other model classes...
    );
  }
}
