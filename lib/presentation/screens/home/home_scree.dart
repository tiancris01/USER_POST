// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:user_post/presentation/providers/users/isar_users_repository.dart';
import 'package:user_post/presentation/providers/users/jsonPH_users_providers.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';
import 'package:user_post/presentation/screens/home/widgets/custom_listview.dart';
import 'package:user_post/presentation/screens/home/widgets/custom_searchbar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    // fetching data from jsonplaceholder
    await ref.read(jsonPHNotifierUserProvider.notifier).getAllUsers();
    // getting data from state
    final response = ref.read(jsonPHNotifierUserProvider);
    // saving data to isar database
    await ref.read(isarRepoProvider).saveUsers(response);
    // getting data from isar database
    ref.read(isarUserNotifierProvider.notifier).getAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de ingreso'),
      ),
      body: Column(
        children: [
          CustomSearchBar(ref: ref),
          const Expanded(child: CustmoListView()),
        ],
      ),
    );
  }
}
