import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key, required this.label, required this.text})
      : super(key: key);

  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        label,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    ]);
  }
}
