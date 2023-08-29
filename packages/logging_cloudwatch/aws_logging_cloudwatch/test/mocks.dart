import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/queued_item_store/queued_item_store.dart';
import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

class MockSmithyOperation<T> extends Mock implements SmithyOperation<T> {}

class MockCloudWatchLogsClient extends Mock implements CloudWatchLogsClient {}

class MockQueuedItemStore extends Mock implements QueuedItemStore {}

class MockCloudWatchLogStreamProvider extends Mock
    implements CloudWatchLogStreamProvider {}

class MockRemoteLoggingConstraintProvider extends Mock
    implements RemoteLoggingConstraintProvider {}
