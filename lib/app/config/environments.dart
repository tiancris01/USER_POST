// ignore_for_file: constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:user_post/app/config/env_config_impl.dart';

import 'package:user_post/app/config/env_model_config.dart';

class Environment {
  static final Environment _instance = Environment._internal();
  factory Environment() => _instance;

  Environment._internal();

  static const String DEV = 'DEV';
  static const String LOCAL = 'STAGING';
  static const String PROD = 'PROD';

  late EnvModelConfig config;

  initConfig() async {
    config = await _getConfig(DEV);
  }

  Future<EnvModelConfig> _getConfig(String environment) async {
    switch (environment) {
      case DEV:
        await dotenv.load(fileName: ".env");
        break;
      case PROD:
        // await dotenv.load(fileName: "envs/prod.env");
        break;
      default:
      // await dotenv.load(fileName: "envs/dev.env");
    }
    return EnvConfigImpl();
  }
}
