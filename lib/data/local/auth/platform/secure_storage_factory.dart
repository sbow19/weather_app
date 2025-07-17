import 'secure_storage.dart';

import 'secure_storage.dart'
    if (dart.library.js_interop) 'desktop_secure_storage.dart'
    if (dart.library.io) 'mobile_secure_storage.dart';

SecureStorage getSecureStorage() => createSecureStorage();
