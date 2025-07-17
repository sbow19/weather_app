import 'package:weather_app/data/local/auth/local_sensitive_data_service.dart';
import 'package:weather_app/utils/auth/helper.dart';
import 'package:weather_app/utils/logging/logger.dart';

class LocalSensitiveDataRepository {
  // Create single private instance when first loaded
  static LocalSensitiveDataRepository? _instance;

  final LocalSecureStoreService _localSecureStoreService;
  final LoggerService _loggerService;

  ///
  /// Singleton constructor logic
  ///
  factory LocalSensitiveDataRepository({
    required LocalSecureStoreService localSecureStoreService,
    required LoggerService loggerService,
  }) {

    _instance ??= LocalSensitiveDataRepository._internal(
      loggerService: loggerService,
      localSecureStoreService: localSecureStoreService
    );
    return _instance!;
  }

  LocalSensitiveDataRepository._internal({
    required LoggerService loggerService,
    required LocalSecureStoreService localSecureStoreService,
  }):  _loggerService = loggerService,
      _localSecureStoreService = localSecureStoreService;


  // CRUD operations on user login database
  Future<bool> authenticateUser(String email, String password) async {
    try {
      // Check email matches a user in the store
      String? base64PasswordHash = await _localSecureStoreService.read(email);

      if(base64PasswordHash == null) throw Exception("Local sensitive data repository: $email does not exist");

      // Compare password
      return isPasswordCorrect(password, base64PasswordHash);
    } on Exception catch (e) {
      _loggerService.e(e.toString());
      return false;
    }
  }

  Future<void> createNewUser(String email, String password) async {
    try {
      await _localSecureStoreService.write(
        email,
        hashPassword(password),
      );
    } on Exception catch (e) {
      _loggerService.e(e.toString());
      rethrow;
    }
  }

  Future<bool> doesUserExist(String email) async {
    try {
      // Throws error if read value is null
      await _localSecureStoreService.read(email);
      return true;
    } on Exception catch (e) {
      _loggerService.e(e.toString());
      return false;
    }
  }
}
