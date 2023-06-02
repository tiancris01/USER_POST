import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/app/config/theme.dart';
import 'package:user_post/app/core/routes/app_routes.dart';
import 'package:user_post/presentation/providers/providers.dart';
import 'package:user_post/presentation/screens/home_scree.dart';

class WidgetApp extends ConsumerStatefulWidget {
  const WidgetApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WidgetAppState();
}

class _WidgetAppState extends ConsumerState<WidgetApp> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    final localUsers = await ref.read(isarRepoProvider).getUsers();
    if (localUsers.isEmpty) {
      await ref.read(jsonPHUserProvider.notifier).getAllUsers();
      final users = ref.read(jsonPHUserProvider);
      await ref.read(isarRepoProvider).saveUsers(users);
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Prueba de ingreso',
      theme: appTheme,
    );
  }
}
