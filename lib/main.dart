import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/widget_app.dart';

import 'app/config/environments.dart';

Future<void> main() async {
  await Environment().initConfig();
  runApp(const ProviderScope(child: WidgetApp()));
}
