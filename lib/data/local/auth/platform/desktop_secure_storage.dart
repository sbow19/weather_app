// lib/storage/secure_storage_web.dart

import 'secure_storage.dart';
import 'package:web/web.dart';

class WebSecureStorage implements SecureStorage {

  @override
  Future<void> write(String key, String value) async {
    window.localStorage.setItem(key, value);
  }

  @override
  Future<String?> read(String key) async {
    return window.localStorage.getItem(key);
  }

  @override
  Future<void> delete(String key) async {
    window.localStorage.removeItem(key);
  }
}

SecureStorage createSecureStorage() => WebSecureStorage();

