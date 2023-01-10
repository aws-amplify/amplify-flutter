// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

/// {@macro aws_common.logging.aws_logger}
class AmplifyLogger extends AWSLogger {
  /// Creates a top-level [AmplifyLogger].
  ///
  /// {@macro aws_common.logging.aws_logger}
  factory AmplifyLogger([String namespace = rootNamespace]) {
    // Create a logger inside the Amplify hierarchy so that printing and log
    // level behavior are consistent with public API.
    //
    // Use AWSLogger to create a logger which can have its own hierarchy.
    if (!namespace.startsWith(rootNamespace)) {
      namespace = '$rootNamespace.$namespace';
    }
    return (AWSLogger.activeLoggers[namespace] ??=
        AmplifyLogger._(Logger(namespace))) as AmplifyLogger;
  }

  /// Creates a [AmplifyLogger] for the Amplify [category].
  ///
  /// {@macro aws_common.logging.aws_logger}
  factory AmplifyLogger.category(Category category) =>
      AmplifyLogger().createChild(category.name);

  AmplifyLogger._(Logger logger) : super.protected(logger);

  /// The root namespace for all [AmplifyLogger] instances.
  static const rootNamespace = '${AWSLogger.rootNamespace}.Amplify';

  @override
  AmplifyLogger createChild(String name) {
    assert(name.isNotEmpty, 'Name should not be empty');
    return AmplifyLogger('$namespace.$name');
  }
}

/// {@template amplify_core.logger.amplify_logger_plugin}
/// A plugin to an [AmplifyLogger] which handles log entries emitted at the
/// [LogLevel] of the logger instance.
/// {@endtemplate}
abstract class AmplifyLoggerPlugin extends AWSLoggerPlugin {
  /// {@macro amplify_core.logger.amplify_logger_plugin}
  const AmplifyLoggerPlugin();
}

/// Mixin providing an [AmplifyLogger] to Amplify classes.
mixin AmplifyLoggerMixin on AWSDebuggable {
  /// The logger for this class.
  @protected
  AmplifyLogger get logger => AmplifyLogger().createChild(runtimeTypeName);
}
