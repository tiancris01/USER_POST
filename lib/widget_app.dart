import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/app/config/theme.dart';
import 'package:user_post/presentation/providers/providers.dart';

class WidgetApp extends ConsumerStatefulWidget {
  const WidgetApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WidgetAppState();
}

class _WidgetAppState extends ConsumerState<WidgetApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Prueba de ingreso'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(jsonPHUserProvider.notifier).getAllUsers();
                },
                child: Text('Fetch Users'),
              ),
              ElevatedButton(
                onPressed: () {
                  final users = ref.watch(jsonPHUserProvider);
                  ref.read(isarUserRepoProvider).saveUsers(users);
                },
                child: Text('Save Users'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
