///
/// Wrapper over local secure store object provided by flutter_secure_storage, which
/// itself wraps an instance of a local db connection.
///
/// The actual singleton is injected into this service
///
/// NOTE:
///
/// We only expose the write, read, and delete methods here,
/// as we don't want to accidentally invoke a deleteAll function or
/// readAll function, which would compromise all keys in secure storage.
///

import 'package:weather_app/data/local/auth/platform/secure_storage.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

class LocalSecureStoreService {
  // Create single private instance of local secure store object when first loaded
  // Initialized when LocalSecureStore constructor first called.
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

  // Define named private constructor logic. For every new object
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
