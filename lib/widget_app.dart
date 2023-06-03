import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/app/config/theme.dart';
import 'package:user_post/app/core/routes/app_routes.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

class WidgetApp extends ConsumerStatefulWidget {
  const WidgetApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WidgetAppState();
}

class _WidgetAppState extends ConsumerState<WidgetApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Opening the database
    ref.read(isarRepoProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Prueba de ingreso',
      theme: appTheme,
    );
  }
}
