import 'package:amplify_logging_cloudwatch/src/amplify_log_stream_name_provider.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';

/// {@macro aws_logging_cloudwatch.cloudwatch_logger_plugin}
class AmplifyCloudWatchLoggerPlugin extends CloudWatchLoggerPlugin {
  /// {@macro aws_logging_cloudwatch.cloudwatch_logger_plugin}
  AmplifyCloudWatchLoggerPlugin({
    required super.credentialsProvider,
    required super.pluginConfig,
  }) : super(
          logStreamProvider: DefaultCloudWatchLogStreamProvider(
            credentialsProvider: credentialsProvider,
            region: pluginConfig.region,
            logGroupName: pluginConfig.logGroupName,
            defaultLogStreamNameProvider:
                AmplifyLogStreamNameProvider().defaultLogStreamName,
          ),
        );
}
