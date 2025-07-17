import 'package:weather_app/data/local/auth/platform/secure_storage.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

///
/// Wrapper for platform-specific secure store services.
///

class LocalSecureStoreService {
  // Create single private instance when first loaded
  static LocalSecureStoreService? _instance;

  final LoggerService _loggerService;
  final EnvVariablesService _envVariablesService;
  final SecureStorage _secureStorage;

  ///
  /// Singleton constructor logic
  ///
  factory LocalSecureStoreService({
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required SecureStorage secureStorage,
  }) {
    _instance ??= LocalSecureStoreService._internal(
      envVariablesService: envVariablesService,
      loggerService: loggerService,
      secureStorage: secureStorage,
    );

    return _instance!;
  }

  LocalSecureStoreService._internal({
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required SecureStorage secureStorage,
  }) : _envVariablesService = envVariablesService,
       _loggerService = loggerService,
       _secureStorage = secureStorage;

  ///
  /// Secure Store API methods exposed here
  ///
  Future<String?> read(String key) async {
    String? value = await _secureStorage.read(key);
    return value;
  }

  Future<void> write(String key, String value) async {
    await _secureStorage.write(key, value);
  }

  Future<void> delete(String key) async {
    await _secureStorage.delete(key);
  }
}
