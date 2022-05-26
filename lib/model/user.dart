// https://jsonplaceholder.typicode.com/users
import 'package:challenge1/model/address.dart';
import 'package:challenge1/model/company.dart';

class User {
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.phone,
    required this.email,
    required this.website,
    required this.address,
    required this.company,
  });

  int id;
  String name;
  String username;
  String phone;
  String email;
  String website;
  Address address;
  Company company;

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      website: map['website'] ?? '',
      address: Address.fromMap(map['address']),
      company: Company.fromMap(map['company']),
    );
  }
}
