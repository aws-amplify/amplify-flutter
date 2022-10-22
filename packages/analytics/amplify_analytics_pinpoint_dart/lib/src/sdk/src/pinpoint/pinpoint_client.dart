// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.pinpoint_client;

import 'dart:async' as _i2;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/delete_user_profile_request.dart'
    as _i26;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/delete_user_profile_response.dart'
    as _i25;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_request.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_response.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_request.dart'
    as _i8;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_response.dart'
    as _i7;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profile_request.dart'
    as _i20;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profile_response.dart'
    as _i19;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profiles_batch_request.dart'
    as _i29;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profiles_batch_response.dart'
    as _i28;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_request.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_response.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_user_events_request.dart'
    as _i35;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_user_events_response.dart'
    as _i34;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_request.dart'
    as _i17;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_response.dart'
    as _i16;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profile_request.dart'
    as _i23;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profile_response.dart'
    as _i22;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profiles_batch_request.dart'
    as _i32;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profiles_batch_response.dart'
    as _i31;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/delete_user_profile_operation.dart'
    as _i27;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/get_endpoint_operation.dart'
    as _i6;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/get_in_app_messages_operation.dart'
    as _i9;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/get_user_profile_operation.dart'
    as _i21;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/get_user_profiles_batch_operation.dart'
    as _i30;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/put_events_operation.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/put_user_events_operation.dart'
    as _i36;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/update_endpoint_operation.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/update_endpoints_batch_operation.dart'
    as _i18;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/update_user_profile_operation.dart'
    as _i24;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/operation/update_user_profiles_batch_operation.dart'
    as _i33;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:smithy/smithy.dart' as _i5;

import 'package:aws_common/aws_common.dart';

/// Doc Engage API - Amazon Pinpoint API
class PinpointClient {
  /// Doc Engage API - Amazon Pinpoint API
  const PinpointClient(
      {required String region,
      Uri? baseUri,
      required _i1.AWSCredentialsProvider credentialsProvider})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final String _region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider _credentialsProvider;

  /// Retrieves information about the settings and attributes of a specific endpoint for an application.
  _i2.Future<_i3.GetEndpointResponse> getEndpoint(_i4.GetEndpointRequest input,
      {AWSHttpClient? client}) {
    return _i6.GetEndpointOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Retrieves the in-app messages targeted for the provided endpoint ID.
  _i2.Future<_i7.GetInAppMessagesResponse> getInAppMessages(
      _i8.GetInAppMessagesRequest input,
      {AWSHttpClient? client}) {
    return _i9.GetInAppMessagesOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
  _i2.Future<_i10.PutEventsResponse> putEvents(_i11.PutEventsRequest input,
      {AWSHttpClient? client}) {
    return _i12.PutEventsOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  _i2.Future<_i13.UpdateEndpointResponse> updateEndpoint(
      _i14.UpdateEndpointRequest input,
      {AWSHttpClient? client}) {
    return _i15.UpdateEndpointOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes for a batch of endpoints. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  _i2.Future<_i16.UpdateEndpointsBatchResponse> updateEndpointsBatch(
      _i17.UpdateEndpointsBatchRequest input,
      {AWSHttpClient? client}) {
    return _i18.UpdateEndpointsBatchOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i19.GetUserProfileResponse> getUserProfile(
      _i20.GetUserProfileRequest input,
      {AWSHttpClient? client}) {
    return _i21.GetUserProfileOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i22.UpdateUserProfileResponse> updateUserProfile(
      _i23.UpdateUserProfileRequest input,
      {AWSHttpClient? client}) {
    return _i24.UpdateUserProfileOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i25.DeleteUserProfileResponse> deleteUserProfile(
      _i26.DeleteUserProfileRequest input,
      {AWSHttpClient? client}) {
    return _i27.DeleteUserProfileOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i28.GetUserProfilesBatchResponse> getUserProfilesBatch(
      _i29.GetUserProfilesBatchRequest input,
      {AWSHttpClient? client}) {
    return _i30.GetUserProfilesBatchOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i31.UpdateUserProfilesBatchResponse> updateUserProfilesBatch(
      _i32.UpdateUserProfilesBatchRequest input,
      {AWSHttpClient? client}) {
    return _i33.UpdateUserProfilesBatchOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  _i2.Future<_i34.PutUserEventsResponse> putUserEvents(
      _i35.PutUserEventsRequest input,
      {AWSHttpClient? client}) {
    return _i36.PutUserEventsOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }
}
