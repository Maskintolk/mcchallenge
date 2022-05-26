import 'package:challenge1/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:challenge1/model/user.dart';
import 'package:challenge1/screens/user_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _navigateToUserDetailsScreen(User user, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserScreen(user: user)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('MC CHALLENGE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )),
        ),
        body: FutureBuilder(
          future: UserService().getUsers(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            if (snapshot.hasData) {
              final users = snapshot.data ?? [];

              if (users.isEmpty) {
                return const Center(
                  child: Text('No users found'),
                );
              }

              return ListView.builder(
                itemCount: users.length > 5 ? 5 : users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    minVerticalPadding: 10.0,
                    leading: const Icon(Icons.person),
                    title: Text(user.name,
                        style: Theme.of(context).textTheme.titleMedium),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(user.email,
                            style: Theme.of(context).textTheme.subtitle1),
                        Text(user.company.name,
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                    onTap: () => _navigateToUserDetailsScreen(user, context),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                  child: Text(
                '${snapshot.error}',
                style: Theme.of(context).textTheme.headline4,
              ));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
