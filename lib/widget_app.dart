import 'package:flutter/material.dart';
import 'package:user_post/app/config/theme.dart';

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

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
            onPressed: () {},
            child: Text('Hola mundo'),
          ),
        ),
      ),
    );
  }
}
