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
          child: ElevatedButton(
            onPressed: () {
              ref.read(getUsersProvider.notifier).getAllUsers();
            },
            child: Text('Hola mundo'),
          ),
        ),
      ),
    );
  }
}
