// lib/storage/secure_storage_mobile.dart
import 'package:weather_app/data/local/auth/platform/secure_storage.dart';

class FakeSecureStorage implements SecureStorage {

  @override
  Future<void> write(String key, String value) {
    return Future.value();
  }

  @override
  Future<String?> read(String key) {
        return Future.value("DUMMY_VALUE_THIS_IS_A_DUMMY_SALT_VALUE");

  }

  @override
  Future<void> delete(String key) {
        return Future.value();

  }
}
