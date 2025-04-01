// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/pinpoint_client.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:smithy/smithy.dart';

/// {@template amplify_analytics_pinpoint.sdk.wrapped_pinpoint_client}
/// A wrapped [PinpointClient] which allows mockable HttpClient
/// {@endtemplate}
class WrappedPinpointClient implements PinpointClient {
  /// {@macro amplify_auth_cognito_dart.sdk.wrapped_cognito_identity_provider_client}
  WrappedPinpointClient({
    required String region,
    Uri? baseUri,
    required AWSCredentialsProvider credentialsProvider,
  }) : _base = PinpointClient(
          region: region,
          baseUri: baseUri,
          credentialsProvider: credentialsProvider,
        );

  final PinpointClient _base;

  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  final DependencyManager _dependencyManager = Amplify.dependencies;

  @override
  SmithyOperation<GetEndpointResponse> getEndpoint(
    GetEndpointRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.getEndpoint(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }

  @override
  SmithyOperation<GetInAppMessagesResponse> getInAppMessages(
    GetInAppMessagesRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.getInAppMessages(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }

  @override
  SmithyOperation<PutEventsResponse> putEvents(
    PutEventsRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.putEvents(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }

  @override
  SmithyOperation<UpdateEndpointResponse> updateEndpoint(
    UpdateEndpointRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.updateEndpoint(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }

  @override
  SmithyOperation<UpdateEndpointsBatchResponse> updateEndpointsBatch(
    UpdateEndpointsBatchRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.updateEndpointsBatch(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }
}
