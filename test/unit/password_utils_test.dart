import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/utils/auth/helper.dart';
import 'package:bcrypt/bcrypt.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';
import 'package:logger/logger.dart';


void main() {
  group('Password hashing', () {
    const password = 'MySecurePassword123';

    setUp(() async {
      EnvVariablesService(loggerService: LoggerService(
        logger: Logger(), 
        loggerOptions: LoggerOptions()
      ));
      await EnvVariablesService.loadEnvs();
    });

    test('hashPassword returns a bcrypt hash that is not plaintext', () {
      final hash = hashPassword(password);
      expect(hash, isNot(equals(password)));
      expect(hash.startsWith(r'$2a'), isTrue); // bcrypt prefix
    });

    test('BCrypt can verify hashed password from hashPassword', () {
      final hash = hashPassword(password);
      final isCorrect = BCrypt.checkpw(password, hash);
      expect(isCorrect, isTrue);
    });
  });

  group('isPasswordCorrect', () {
    const password = 'TestPassword!';
    late String hash;

    setUp(() async {
      hash = hashPassword(password);
      EnvVariablesService(loggerService: LoggerService(
        logger: Logger(), 
        loggerOptions: LoggerOptions()
      ));
      await EnvVariablesService.loadEnvs();
    });

    test('returns true if password matches hash', () {
      expect(isPasswordCorrect(password, hash), isTrue);
    });

    test('returns false if password does not match hash', () {
      expect(isPasswordCorrect('wrongpassword', hash), isFalse);
    });
  });
}
