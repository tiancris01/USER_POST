import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_post/app/config/colors.dart';
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
            : Card(
                elevation: 2,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                color: AppColors.white.withOpacity(0.9),
                child: ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child: Text(user.fullName.substring(0, 2).toUpperCase(),
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  title: Text(
                    user.fullName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.phone, size: 16.0),
                          const SizedBox(width: 5.0),
                          Text(user.phone, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          const Icon(Icons.email, size: 16.0),
                          const SizedBox(width: 5.0),
                          Expanded(
                              child: Text(user.email,
                                  overflow: TextOverflow.ellipsis)),
                        ],
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      context.push('/userPost', extra: user);
                    },
                  ),
                ),
              );
      },
    );
  }
}
