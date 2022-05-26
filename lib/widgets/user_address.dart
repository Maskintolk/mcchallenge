import 'package:challenge1/model/address.dart';
import 'package:challenge1/widgets/user_data.dart';
import 'package:flutter/material.dart';

class UserAddress extends StatelessWidget {
  const UserAddress({Key? key, required this.address}) : super(key: key);

  final Address address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserData(label: 'Street', text: address.street),
          const SizedBox(height: 10.0),
          UserData(label: 'Suite', text: address.suite),
          const SizedBox(height: 10.0),
          UserData(label: 'City', text: address.city),
          const SizedBox(height: 10.0),
          UserData(label: 'Zipcode', text: address.zipcode),
        ],
      ),
    );
  }
}
