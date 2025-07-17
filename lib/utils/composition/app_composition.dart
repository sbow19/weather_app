import 'package:logger/logger.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

Future<AppViewModel> composeAppViewModel() async{

  // Init logger service class as singleton
  LoggerOptions loggerOptions = LoggerOptions();
  Logger logger = Logger(
    filter: loggerOptions.logFilter,
    printer: loggerOptions.logPrinter,
    level: loggerOptions.level,
    output: loggerOptions.logOutput,
  );
  LoggerService loggerService = LoggerService(loggerOptions: loggerOptions, logger: logger);

  // Init env variables service class as singleton
  EnvVariablesService envService = EnvVariablesService(loggerService: LoggerService.loggerService);

  await EnvVariablesService.loadEnvs();

  // Get logger log level
  String logLevel = envService.getEnv("LOG_LEVEL") ?? "debug";
  // Update log level globally according to .env
  loggerService.updateLevel(logLevel);

  return AppViewModel(
    loggerService: loggerService, 
    envVariablesService: envService
  );
}