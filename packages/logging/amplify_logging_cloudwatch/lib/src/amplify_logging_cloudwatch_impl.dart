import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch/src/amplify_log_stream_name_provider.dart';
import 'package:amplify_logging_cloudwatch/src/path_provider/flutter_path_provider.dart';
import 'package:amplify_logging_cloudwatch_dart/amplify_logging_cloudwatch_dart.dart';

/// {@macro amplify_logging_cloudwatch_dart.cloudwatch_logger_plugin}
class AmplifyCloudWatchLoggerPlugin extends CloudWatchLoggerPlugin {
  /// {@macro amplify_logging_cloudwatch_dart.cloudwatch_logger_plugin}
  AmplifyCloudWatchLoggerPlugin(
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
  static const LoggingPluginKey<AmplifyCloudWatchLoggerPlugin> pluginKey =
      _AmplifyCloudWatchLoggerPluginKey();
}

class _AmplifyCloudWatchLoggerPluginKey
    extends LoggingPluginKey<AmplifyCloudWatchLoggerPlugin> {
  const _AmplifyCloudWatchLoggerPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyCloudWatchLoggerPluginKey';
}
