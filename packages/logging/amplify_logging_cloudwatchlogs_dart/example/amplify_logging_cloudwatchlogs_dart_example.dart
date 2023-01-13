import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatchlogs_dart/amplify_logging_cloudwatchlogs_dart.dart';

void main() {
  final logger = AmplifyLogger();
  final cwLoggerPlugin = CloudWatchLoggerPluginDart();
  for (var i = 0; i <= 20; i = i + 2) {
    logger
      ..registerPlugin(cwLoggerPlugin)
      ..info('info: log#$i from example app ')
      ..error('error: log#${i + 1} from example app');
  }
}
