// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.pinpoint_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_request.dart'
    as _i5;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_response.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_request.dart'
    as _i8;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_response.dart'
    as _i7;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_request.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_response.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_request.dart'
    as _i17;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_response.dart'
    as _i16;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/get_endpoint_operation.dart'
    as _i6;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/get_in_app_messages_operation.dart'
    as _i9;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/put_events_operation.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/update_endpoint_operation.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/update_endpoints_batch_operation.dart'
    as _i18;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

/// Doc Engage API - Amazon Pinpoint API
class PinpointClient {
  /// Doc Engage API - Amazon Pinpoint API
  const PinpointClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// Retrieves information about the settings and attributes of a specific endpoint for an application.
  _i3.SmithyOperation<_i4.GetEndpointResponse> getEndpoint(
    _i5.GetEndpointRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.GetEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the in-app messages targeted for the provided endpoint ID.
  _i3.SmithyOperation<_i7.GetInAppMessagesResponse> getInAppMessages(
    _i8.GetInAppMessagesRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i9.GetInAppMessagesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
  _i3.SmithyOperation<_i10.PutEventsResponse> putEvents(
    _i11.PutEventsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i12.PutEventsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  _i3.SmithyOperation<_i13.UpdateEndpointResponse> updateEndpoint(
    _i14.UpdateEndpointRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i15.UpdateEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes for a batch of endpoints. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  _i3.SmithyOperation<_i16.UpdateEndpointsBatchResponse> updateEndpointsBatch(
    _i17.UpdateEndpointsBatchRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i18.UpdateEndpointsBatchOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
