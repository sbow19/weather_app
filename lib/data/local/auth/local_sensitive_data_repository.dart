import 'package:weather_app/data/local/auth/local_sensitive_data_service.dart';
import 'package:weather_app/utils/auth/helper.dart';
import 'package:weather_app/utils/logging/logger.dart';

class LocalSensitiveDataRepository {
  static final LocalSensitiveDataRepository _instance =
      LocalSensitiveDataRepository._internal();
  static LocalSecureStoreService? _localSecureStoreService;
  static LoggerService? _loggerService;

  factory LocalSensitiveDataRepository({
    bool? debug,
    required LocalSecureStoreService localSecureStoreService,
    required LoggerService loggerService,
  }) {
    _localSecureStoreService ??= localSecureStoreService;
    _loggerService ??= loggerService;
    return _instance;
  }

  LocalSensitiveDataRepository._internal();

  // CRUD operations on user login database
  Future<bool> authenticateUser(String email, String password) async {
    try {
      // Check email matches a user in the store
      String? base64PasswordHash = await _localSecureStoreService!.read(email);

      if(base64PasswordHash == null) throw Exception("Local sensitive data repository: $email does not exist");
      // Compare password
      return isPasswordCorrect(password, base64PasswordHash);
    } on Exception catch (e) {
      _loggerService!.e(e.toString());

      return false;
    }
  }

  Future<void> createNewUser(String email, String password) async {
    try {
      await _localSecureStoreService!.write(
        email,
        hashPassword(password),
      );
    } on Exception catch (e) {
      _loggerService!.e(e.toString());
      rethrow;
    }
  }

  Future<bool> doesUserExist(String email) async {
    try {
      // Throws error if read value is null
      await _localSecureStoreService!.read(email);
      return true;
    } on Exception catch (e) {
      _loggerService!.e(e.toString());
      return false;
    }
  }
}
