import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/pinpoint_client.dart';
import 'package:aws_common/aws_common.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

SmithyOperation<T> mockSmithyOperation<T>(FutureOr<T> Function() fn) =>
    SmithyOperation(
      CancelableOperation.fromFuture(
        Future.value(fn()),
      ),
      operationName: '',
      requestProgress: const Stream.empty(),
      responseProgress: const Stream.empty(),
    );

class MockPinpointClient extends Mock implements PinpointClient {}

class MockLegacyNativeDataProvider extends Mock
    implements LegacyNativeDataProvider {}

//class MockEndpointClient extends Mock implements EndpointClient {}
