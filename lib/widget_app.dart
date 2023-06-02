import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/app/config/theme.dart';
import 'package:user_post/app/core/routes/app_routes.dart';
import 'package:user_post/presentation/providers/users/jsonPH_users_providers.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

class WidgetApp extends ConsumerStatefulWidget {
  const WidgetApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WidgetAppState();
}

class _WidgetAppState extends ConsumerState<WidgetApp> {
  @override
  void initState() {
    initialize();
    super.initState();
  }

  void initialize() async {
    final localUsers = await ref.read(isarRepoProvider).existUsers();
    if (!localUsers) {
      await ref.read(jsonPHUserProvider.notifier).getAllUsers();
      await ref.read(isarRepoProvider).saveUsers(
            ref.read(jsonPHUserProvider),
          );
    } else {
      await ref.read(jsonPHUserProvider.notifier).getAllUsers();
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
