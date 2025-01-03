import 'package:logging/logging.dart' show Logger, Level;
import 'package:flutter/foundation.dart' show kDebugMode;
export 'package:logging/logging.dart' show Logger;

/// Service for handling application logging
/// Provides centralized logging configuration and logger instances
class LoggerService {
  /// Initialize logging configuration for the entire application
  /// Sets up root logger level and logging handlers
  static void initialize() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      // Configure logging output based on environment
      if (kDebugMode) {
        print('${record.level.name}: ${record.time}: ${record.message}');
      }
      // Add production logging configuration here
    });
  }

  /// Get a logger instance for a specific class/component
  ///
  /// [name] The name of the logger, typically the class name
  /// Returns a configured [Logger] instance
  static Logger getLogger(String name) {
    return Logger(name);
  }
}
