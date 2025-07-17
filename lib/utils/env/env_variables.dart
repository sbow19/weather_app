import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/utils/logging/logger.dart';

class EnvVariablesService {

  // Create singleton instance
  static final EnvVariablesService _instance = EnvVariablesService._internal();
  static LoggerService? _loggerService;

  factory EnvVariablesService({
    required loggerService
  }){

    _loggerService ??= loggerService;

    // Assign _logger once
    return _instance;
  }

  // internal constructor --> do nothing
  EnvVariablesService._internal();

  // Return instance of EnvVariableService
  static EnvVariablesService get envVariablesService => _instance;

  /**
   *  Method is called at beginning of app, prior to instantiation of
   *  logger service.
   */
  static Future<void> loadEnvs() async {
    // Load in env dependent config
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');
    final envPath = 'lib/config/.env.$env';

    try {
      // Load env
      await dotenv.load(fileName: envPath);
    } on Exception catch(e){
      print(e);
      // Exit application
      rethrow;
    }

  }

  dynamic getEnv(String envName){

    dynamic env = dotenv.env[envName] ;

    if(env == null){
      _loggerService!.e("Invalid environment variable: $envName");
    }
    return env;
  }

  
}
