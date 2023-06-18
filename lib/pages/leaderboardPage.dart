import 'package:flutter/material.dart';
import '../models/loginUser.dart';
import '../widgets/mainAppBar.dart';

class LeaderboardPage extends StatelessWidget {
  final List<UserModel> users;

  LeaderboardPage({required this.users});

  @override
  Widget build(BuildContext context) {
    // Adım sayısına göre kullanıcıları sıralar
    users.sort((a, b) => (b.stepCount ?? 0).compareTo(a.stepCount ?? 0));

    return Scaffold(
      appBar: MainAppBar(),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.photoURL ?? ''),
            ),
            title: Text(user.displayName ?? ''),
            subtitle: Text('${user.stepCount ?? 0} Steps'),
          );
        },
      ),
    );
  }
}

