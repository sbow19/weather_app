import 'package:bcrypt/bcrypt.dart';
import 'package:weather_app/utils/env/env_variables.dart';

///
/// Return hashed password
///
String hashPassword(String password) {
  var s = BCrypt.gensalt();
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
      // Allow login without credentials
      return true;
    default:
      return BCrypt.checkpw(password, encodedHash);
  }
}
