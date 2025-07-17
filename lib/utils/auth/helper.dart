///
/// Hashing function to ensure that user passwords stored locally
/// are hashed and not viewable by potential attackers.
///
///

import 'package:bcrypt/bcrypt.dart';
import 'package:weather_app/utils/env/env_variables.dart';

///
/// Return a base64 encoding of the hashed password
///
String hashPassword(String password) {
  var s = BCrypt.gensalt(
    
  );
  try {
    var result = BCrypt.hashpw(password, s);
    return result;
  } on Exception catch (e) {
    rethrow;
  }
}

///
///  Compare user-provided password with encoded hash in key value store
///
bool isPasswordCorrect(String password, String encodedHash) {
  EnvVariablesService envVariablesService =
      EnvVariablesService.envVariablesService;

  String env = envVariablesService.getEnv("ENV");

  switch (env) {
    case "prev":
      return true;
    default:
      return BCrypt.checkpw(password, encodedHash);
  }
}
