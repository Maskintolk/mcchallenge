import 'package:challenge1/widgets/user_address.dart';
import 'package:challenge1/widgets/user_company.dart';
import 'package:challenge1/widgets/user_personal.dart';
import 'package:flutter/material.dart';
import 'package:challenge1/model/user.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(width: 10.0),
                Text(user.name),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10.0),
                    Center(
                      child: Text(
                        'Personal Data',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    UserPersonal(user: user),
                    const SizedBox(height: 20.0),
                    Center(
                      child: Text(
                        'Address',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    UserAddress(address: user.address),
                    const SizedBox(height: 20.0),
                    Center(
                      child: Text(
                        'Company',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    UserCompany(company: user.company),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
