// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:user_post/presentation/providers/users/isar_users_repository.dart';
import 'package:user_post/presentation/screens/home/widgets/users_listview.dart';

class CustmoListView extends ConsumerWidget {
  const CustmoListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final users = ref.watch(isarUserNotifierProvider);
    return users.when(
      initial: () => const Center(child: Text('Empty list')),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (users) => ListViewUsers(users: users),
      error: () => const Text('Error Occurred'),
    );
  }
}
