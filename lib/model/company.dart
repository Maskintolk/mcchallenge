class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  String name;
  String catchPhrase;
  String bs;

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      name: map['name'] ?? '',
      catchPhrase: map['catchPhrase'] ?? '',
      bs: map['bs'] ?? '',
    );
  }
}
