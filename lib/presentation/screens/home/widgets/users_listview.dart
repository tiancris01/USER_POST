import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

class ListViewUsers extends StatelessWidget {
  const ListViewUsers({
    Key? key,
    required this.users,
  }) : super(key: key);
  final List<UserEntitie> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return users.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListTile(
                isThreeLine: true,
                leading: CircleAvatar(
                  child: Text(
                    user.fullName.substring(0, 2).toUpperCase(),
                  ),
                ),
                title: Text(user.fullName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.phone),
                    const SizedBox(height: 5.0),
                    Text(user.email),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: () {
                    context.push('/userPost', extra: user);
                  },
                ),
              );
      },
    );
  }
}
