import 'secure_storage.dart';

// SecureStorage abstract interface

import 'secure_storage.dart'
    if (dart.library.js_interop) 'desktop_secure_storage.dart'
    if (dart.library.io) 'mobile_secure_storage.dart';

// Each secure_storage.dart file contains a createSecureStorage function signature.
SecureStorage getSecureStorage() => createSecureStorage();
