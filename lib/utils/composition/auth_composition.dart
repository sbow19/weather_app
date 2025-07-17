import 'package:weather_app/data/fake_data_services/fake_secure_storage.dart';
import 'package:weather_app/data/local/auth/local_sensitive_data_repository.dart';
import 'package:weather_app/data/local/auth/local_sensitive_data_service.dart';
import 'package:weather_app/data/local/auth/platform/secure_storage.dart';
import 'package:weather_app/data/local/auth/platform/secure_storage_factory.dart';
import 'package:weather_app/ui/auth/view_models/auth_view_model.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

AuthViewModel composeAuthViewModel() {

  // Generic secureStorage interface
  SecureStorage secureStorage;
  EnvVariablesService envVariablesService = EnvVariablesService.envVariablesService;

  String env = envVariablesService.getEnv("ENV");

  switch (env) {
    // In preview mode
    case "prev":
      secureStorage = FakeSecureStorage();
      break;
    
    // Any other mode, get storage API
    default:

      // Imports either web or mobile  storage API
      secureStorage = getSecureStorage();
      break;
  }
 
  return AuthViewModel(
    localSensitiveDataRepository: LocalSensitiveDataRepository(
      loggerService: LoggerService.loggerService!,
      localSecureStoreService: LocalSecureStoreService(
        loggerService: LoggerService.loggerService!,
        secureStorage: secureStorage,
        envVariablesService: EnvVariablesService.envVariablesService
      )
    ),
    loggerService: LoggerService.loggerService!
  );
  
}
