import 'package:challenge1/model/user.dart';
import 'package:challenge1/widgets/user_data.dart';
import 'package:flutter/material.dart';

class UserPersonal extends StatelessWidget {
  const UserPersonal({Key? key, required this.user}) : super(key: key);

  final User user;

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
          UserData(label: 'Name', text: user.name),
          const SizedBox(height: 10.0),
          UserData(label: 'Id', text: user.id.toString()),
          const SizedBox(height: 10.0),
          UserData(label: 'Username', text: user.username),
          const SizedBox(height: 10.0),
          UserData(label: 'Phone', text: user.phone),
          const SizedBox(height: 10.0),
          UserData(label: 'E-mail', text: user.email),
          const SizedBox(height: 10.0),
          UserData(label: 'Website', text: user.website),
        ],
      ),
    );
  }
}
