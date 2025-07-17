import 'package:weather_app/data/local/user_position/platform/location_service.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

import 'location_service.dart';

import 'location_service.dart' 
    if (dart.library.io) 'mobile_user_location_service.dart' 
    if (dart.library.js_interop) 'desktop_user_location_service.dart';


LocationService getUserLocationService({
  required LoggerService loggerService,
  required EnvVariablesService envVariablesService,
}) =>
    getPlatformLocationService(
      loggerService: loggerService,
      envVariablesService: envVariablesService,
    );
