import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch/src/amplify_log_stream_name_provider.dart';
import 'package:amplify_logging_cloudwatch/src/path_provider/flutter_path_provider.dart';
import 'package:amplify_logging_cloudwatch_dart/amplify_logging_cloudwatch_dart.dart';

/// {@macro amplify_logging_cloudwatch_dart.cloudwatch_logger_plugin}
class AmplifyLoggingCloudwatch extends AmplifyLoggingCloudWatchDart {
  /// {@macro amplify_logging_cloudwatch_dart.cloudwatch_logger_plugin}
  AmplifyLoggingCloudwatch(
    super.pluginConfig, {
    super.remoteLoggingConstraintProvider,
    FutureOr<String> Function()? logStreamNameProvider,
  }) : super(
          logStreamNameProvider: logStreamNameProvider ??
              AmplifyLogStreamNameProvider().defaultLogStreamName,
        );

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    // override the path provider dependency added by AmplifyStorageS3Dart
    dependencies.addInstance<AppPathProvider>(FlutterPathProvider());
    await super.configure(config: config, authProviderRepo: authProviderRepo);
  }

  /// {@template amplify_logging_cloudwatch.plugin_key}
  /// A plugin key which can be used with `Amplify.Logging.getPlugin` to retrieve
  /// a CloudWatch-specific Logging category interface.
  /// {@endtemplate}
  static const LoggingPluginKey<AmplifyLoggingCloudwatch> pluginKey =
      _AmplifyCloudWatchLoggerPluginKey();
}

class _AmplifyCloudWatchLoggerPluginKey
    extends LoggingPluginKey<AmplifyLoggingCloudwatch> {
  const _AmplifyCloudWatchLoggerPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyLoggingCloudwatchKey';
}
