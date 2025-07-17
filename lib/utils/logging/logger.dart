import 'package:logger/logger.dart';

class LoggerService {
  // Singleton instance of logger service
  static LoggerService? _instance;

  // Return instance of logger
  static LoggerService? get loggerService => _instance;
  
  Logger _logger;
  final LoggerOptions _loggerOptions;

  ///
  /// Singleton constructor logic
  ///
  factory LoggerService({
    required Logger logger,
    required LoggerOptions loggerOptions,
  }) {
    _instance ??= LoggerService._internal(
      logger:logger,
      loggerOptions: loggerOptions
    );

    return _instance!;
  }

  LoggerService._internal({
    required Logger logger,
    required LoggerOptions loggerOptions,
  }): _logger = logger, 
  _loggerOptions = loggerOptions;

  
  ///  Logger package doesn't support runtime updates to log levels,
  /// so need to create new Logger object with different options
  void updateLevel(String levelRaw) {
    _logger = Logger(
      level: _parseLevel(levelRaw),
      filter: _loggerOptions.logFilter,
      printer: _loggerOptions.logPrinter,
      output: _loggerOptions.logOutput,
    );
  }

  static Level _parseLevel(String levelRaw) {
  switch (levelRaw.toLowerCase()) {
    case 'debug':
      return Level.debug;
    case 'info':
      return Level.info;
    case 'warning':
    case 'warn':
      return Level.warning;
    case 'error':
      return Level.error;
    default:
      return Level.info; // fallback
  }
}

  // Expose Logger functions  
  void d(String message) => _logger.d(message);
  void i(String message) => _logger.i(message);
  void w(String message) => _logger.w(message);
  void e(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.e(message);

}

///
/// 
///
class LoggerOptions {
  LogFilter? logFilter;
  LogPrinter? logPrinter;
  LogOutput? logOutput;
  Level? level;

  LoggerOptions({
    this.logFilter,
    this.logPrinter,
    this.logOutput,
    this.level,
  });
}
