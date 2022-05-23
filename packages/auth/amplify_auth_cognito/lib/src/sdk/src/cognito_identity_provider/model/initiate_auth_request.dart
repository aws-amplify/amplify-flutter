// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.initiate_auth_request;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/auth_flow_type.dart'
    as _i4;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i6;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'initiate_auth_request.g.dart';

/// Initiates the authentication request.
abstract class InitiateAuthRequest
    with
        _i1.HttpInput<InitiateAuthRequest>,
        _i2.AWSEquatable<InitiateAuthRequest>
    implements Built<InitiateAuthRequest, InitiateAuthRequestBuilder> {
  /// Initiates the authentication request.
  factory InitiateAuthRequest(
      {_i3.AnalyticsMetadataType? analyticsMetadata,
      required _i4.AuthFlowType authFlow,
      _i5.BuiltMap<String, String>? authParameters,
      required String clientId,
      _i5.BuiltMap<String, String>? clientMetadata,
      _i6.UserContextDataType? userContextData}) {
    return _$InitiateAuthRequest._(
        analyticsMetadata: analyticsMetadata,
        authFlow: authFlow,
        authParameters: authParameters,
        clientId: clientId,
        clientMetadata: clientMetadata,
        userContextData: userContextData);
  }

  /// Initiates the authentication request.
  factory InitiateAuthRequest.build(
          [void Function(InitiateAuthRequestBuilder) updates]) =
      _$InitiateAuthRequest;

  const InitiateAuthRequest._();

  factory InitiateAuthRequest.fromRequest(
          InitiateAuthRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _InitiateAuthRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InitiateAuthRequestBuilder b) {}

  /// The Amazon Pinpoint analytics metadata for collecting metrics for `InitiateAuth` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// The authentication flow for this call to execute. The API action will depend on this value. For example:
  ///
  /// *   `REFRESH\_TOKEN\_AUTH` will take in a valid refresh token and return new tokens.
  ///
  /// *   `USER\_SRP\_AUTH` will take in `USERNAME` and `SRP_A` and return the SRP variables to be used for next challenge execution.
  ///
  /// *   `USER\_PASSWORD\_AUTH` will take in `USERNAME` and `PASSWORD` and return the next challenge or tokens.
  ///
  ///
  /// Valid values include:
  ///
  /// *   `USER\_SRP\_AUTH`: Authentication flow for the Secure Remote Password (SRP) protocol.
  ///
  /// *   `REFRESH\_TOKEN\_AUTH`/`REFRESH_TOKEN`: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.
  ///
  /// *   `CUSTOM_AUTH`: Custom authentication flow.
  ///
  /// *   `USER\_PASSWORD\_AUTH`: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.
  ///
  /// *   `ADMIN\_USER\_PASSWORD_AUTH`: Admin-based user password authentication. This replaces the `ADMIN\_NO\_SRP_AUTH` authentication flow. In this flow, Cognito receives the password in the request instead of using the SRP process to verify passwords.
  ///
  ///
  /// `ADMIN\_NO\_SRP_AUTH` is not a valid value.
  _i4.AuthFlowType get authFlow;

  /// The authentication parameters. These are inputs corresponding to the `AuthFlow` that you are invoking. The required values depend on the value of `AuthFlow`:
  ///
  /// *   For `USER\_SRP\_AUTH`: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`.
  ///
  /// *   For `REFRESH\_TOKEN\_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`.
  ///
  /// *   For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`. To start the authentication flow with password verification, include `ChallengeName: SRP_A` and `SRP\_A: (The SRP\_A Value)`.
  _i5.BuiltMap<String, String>? get authParameters;

  /// The app client ID.
  String get clientId;

  /// A map of custom key-value pairs that you can provide as input for certain custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the InitiateAuth API action, Amazon Cognito invokes the Lambda functions that are specified for various triggers. The ClientMetadata value is passed as input to the functions for only the following triggers:
  ///
  /// *   Pre signup
  ///
  /// *   Pre authentication
  ///
  /// *   User migration
  ///
  ///
  /// When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which the function receives as input. This payload contains a `validationData` attribute, which provides the data that you assigned to the ClientMetadata parameter in your InitiateAuth request. In your function code in Lambda, you can process the `validationData` value to enhance your workflow for your specific needs.
  ///
  /// When you use the InitiateAuth API action, Amazon Cognito also invokes the functions for the following triggers, but it does not provide the ClientMetadata value as input:
  ///
  /// *   Post authentication
  ///
  /// *   Custom message
  ///
  /// *   Pre token generation
  ///
  /// *   Create auth challenge
  ///
  /// *   Define auth challenge
  ///
  /// *   Verify auth challenge
  ///
  ///
  /// For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// Take the following limitations into consideration when you use the ClientMetadata parameter:
  ///
  /// *   Amazon Cognito does not store the ClientMetadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.
  ///
  /// *   Amazon Cognito does not validate the ClientMetadata value.
  ///
  /// *   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.
  _i5.BuiltMap<String, String>? get clientMetadata;

  /// Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  _i6.UserContextDataType? get userContextData;
  @override
  InitiateAuthRequest getPayload() => this;
  @override
  List<Object?> get props => [
        analyticsMetadata,
        authFlow,
        authParameters,
        clientId,
        clientMetadata,
        userContextData
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InitiateAuthRequest');
    helper.add('analyticsMetadata', analyticsMetadata);
    helper.add('authFlow', authFlow);
    helper.add('authParameters', '***SENSITIVE***');
    helper.add('clientId', '***SENSITIVE***');
    helper.add('clientMetadata', clientMetadata);
    helper.add('userContextData', userContextData);
    return helper.toString();
  }
}

class _InitiateAuthRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<InitiateAuthRequest> {
  const _InitiateAuthRequestAwsJson11Serializer()
      : super('InitiateAuthRequest');

  @override
  Iterable<Type> get types =>
      const [InitiateAuthRequest, _$InitiateAuthRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  InitiateAuthRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InitiateAuthRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AnalyticsMetadata':
          if (value != null) {
            result.analyticsMetadata.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.AnalyticsMetadataType))
                as _i3.AnalyticsMetadataType));
          }
          break;
        case 'AuthFlow':
          result.authFlow = (serializers.deserialize(value!,
                  specifiedType: const FullType(_i4.AuthFlowType))
              as _i4.AuthFlowType);
          break;
        case 'AuthParameters':
          if (value != null) {
            result.authParameters.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i5.BuiltMap, [FullType(String), FullType(String)]))
                as _i5.BuiltMap<String, String>));
          }
          break;
        case 'ClientId':
          result.clientId = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i5.BuiltMap, [FullType(String), FullType(String)]))
                as _i5.BuiltMap<String, String>));
          }
          break;
        case 'UserContextData':
          if (value != null) {
            result.userContextData.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.UserContextDataType))
                as _i6.UserContextDataType));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as InitiateAuthRequest);
    final result = <Object?>[
      'AuthFlow',
      serializers.serialize(payload.authFlow,
          specifiedType: const FullType(_i4.AuthFlowType)),
      'ClientId',
      serializers.serialize(payload.clientId,
          specifiedType: const FullType(String))
    ];
    if (payload.analyticsMetadata != null) {
      result
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(payload.analyticsMetadata!,
            specifiedType: const FullType(_i3.AnalyticsMetadataType)));
    }
    if (payload.authParameters != null) {
      result
        ..add('AuthParameters')
        ..add(serializers.serialize(payload.authParameters!,
            specifiedType: const FullType(
                _i5.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(payload.clientMetadata!,
            specifiedType: const FullType(
                _i5.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.userContextData != null) {
      result
        ..add('UserContextData')
        ..add(serializers.serialize(payload.userContextData!,
            specifiedType: const FullType(_i6.UserContextDataType)));
    }
    return result;
  }
}
