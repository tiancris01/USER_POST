import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:user_post/presentation/providers/users/isar_posts_repository.dart';
import 'package:user_post/presentation/providers/users/isar_users_repository.dart';
import 'package:user_post/presentation/providers/users/jsonPH_posts_providers.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

class CustmoScafold extends ConsumerWidget {
  const CustmoScafold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final users = ref.watch(isarUserNotifierProvider);
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
