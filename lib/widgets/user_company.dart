import 'package:challenge1/model/company.dart';
import 'package:challenge1/widgets/user_data.dart';
import 'package:flutter/material.dart';

class UserCompany extends StatelessWidget {
  const UserCompany({Key? key, required this.company}) : super(key: key);

  final Company company;

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
          UserData(label: 'Name', text: company.name),
          const SizedBox(height: 10.0),
          UserData(label: 'Catch Phrase', text: company.catchPhrase),
          const SizedBox(height: 10.0),
          UserData(label: 'Bs', text: company.bs),
        ],
      ),
    );
  }
}
