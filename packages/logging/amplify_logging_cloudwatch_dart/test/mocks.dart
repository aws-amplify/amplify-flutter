import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/amplify_logging_cloudwatch_dart.dart'
    show CloudWatchLogStreamProvider, RemoteLoggingConstraintProvider;
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:amplify_logging_cloudwatch_dart/src/sdk/cloud_watch_logs.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

class MockSmithyOperation<T> extends Mock implements SmithyOperation<T> {}

class MockCloudWatchLogsClient extends Mock implements CloudWatchLogsClient {}

class MockQueuedItemStore extends Mock implements QueuedItemStore {}

class MockCloudWatchLogStreamProvider extends Mock
    implements CloudWatchLogStreamProvider {}

class MockRemoteLoggingConstraintProvider extends Mock
    implements RemoteLoggingConstraintProvider {}

class MockAuthUser extends Mock implements AuthUser {
  @override
  final String userId = 'mockUserId';

  @override
  final String username = 'mockUser';
}

class MockAuthProviderRepo extends Mock
    implements AmplifyAuthProviderRepository {}

class MockAWSIamAmplifyAuthProvider extends Mock
    implements AWSIamAmplifyAuthProvider {}
