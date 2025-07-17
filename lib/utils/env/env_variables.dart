import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/utils/logging/logger.dart';

class EnvVariablesService {

  // Create singleton instance
  static  EnvVariablesService? _instance;


  final LoggerService _loggerService;

  factory EnvVariablesService({
    required loggerService
  }){

    _instance ??= EnvVariablesService._internal(
      loggerService: loggerService
    );

    // Assign _logger once
    return _instance!;
  }

  // internal constructor --> do nothing
  EnvVariablesService._internal({
    required loggerService
  }): _loggerService = loggerService;

  // Return instance of EnvVariableService
  static EnvVariablesService get envVariablesService => _instance!;


  ///  Method is called at beginning of app, prior to instantiation of
  ///  logger service.
  static Future<void> loadEnvs() async {
    // Load in env dependent config
    const env = String.fromEnvironment('ENV_FILE', defaultValue: 'lib/config/.env.dev');

    try {
      // Load env
      await dotenv.load(fileName: env);
    } on Exception catch(e){
      print(e);
      // Exit application
      rethrow;
    }

  }

  dynamic getEnv(String envName){

    dynamic env = dotenv.env[envName] ;

    if(env == null){
      _loggerService.e("Invalid environment variable: $envName");
    }
    return env;
  }

  
}
