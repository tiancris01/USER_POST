import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'env_model_config.dart';

class EnvConfigImpl implements EnvModelConfig {
  @override
  bool? get showDebugBanner => dotenv.env['SHOW_DEBUG_BANNER'] == 'true';

  @override
  String? get testApiUrl => dotenv.env['TEST_API_URL'];
}
