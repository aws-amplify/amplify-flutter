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

library amplify_auth_cognito.cognito_identity_provider.model.confirm_forgot_password_request;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'confirm_forgot_password_request.g.dart';

/// The request representing the confirmation for a password reset.
abstract class ConfirmForgotPasswordRequest
    with
        _i1.HttpInput<ConfirmForgotPasswordRequest>,
        _i2.AWSEquatable<ConfirmForgotPasswordRequest>
    implements
        Built<ConfirmForgotPasswordRequest,
            ConfirmForgotPasswordRequestBuilder> {
  /// The request representing the confirmation for a password reset.
  factory ConfirmForgotPasswordRequest(
      {_i3.AnalyticsMetadataType? analyticsMetadata,
      required String clientId,
      _i4.BuiltMap<String, String>? clientMetadata,
      required String confirmationCode,
      required String password,
      String? secretHash,
      _i5.UserContextDataType? userContextData,
      required String username}) {
    return _$ConfirmForgotPasswordRequest._(
        analyticsMetadata: analyticsMetadata,
        clientId: clientId,
        clientMetadata: clientMetadata,
        confirmationCode: confirmationCode,
        password: password,
        secretHash: secretHash,
        userContextData: userContextData,
        username: username);
  }

  /// The request representing the confirmation for a password reset.
  factory ConfirmForgotPasswordRequest.build(
          [void Function(ConfirmForgotPasswordRequestBuilder) updates]) =
      _$ConfirmForgotPasswordRequest;

  const ConfirmForgotPasswordRequest._();

  factory ConfirmForgotPasswordRequest.fromRequest(
          ConfirmForgotPasswordRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _ConfirmForgotPasswordRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmForgotPasswordRequestBuilder b) {}

  /// The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmForgotPassword` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// The app client ID of the app associated with the user pool.
  String get clientId;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the ConfirmForgotPassword API action, Amazon Cognito invokes the function that is assigned to the _post confirmation_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmForgotPassword request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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
  _i4.BuiltMap<String, String>? get clientMetadata;

  /// The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see [ForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html).
  String get confirmationCode;

  /// The password sent by a user's request to retrieve a forgotten password.
  String get password;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  _i5.UserContextDataType? get userContextData;

  /// The user name of the user for whom you want to enter a code to retrieve a forgotten password.
  String get username;
  @override
  ConfirmForgotPasswordRequest getPayload() => this;
  @override
  List<Object?> get props => [
        analyticsMetadata,
        clientId,
        clientMetadata,
        confirmationCode,
        password,
        secretHash,
        userContextData,
        username
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmForgotPasswordRequest');
    helper.add('analyticsMetadata', analyticsMetadata);
    helper.add('clientId', '***SENSITIVE***');
    helper.add('clientMetadata', clientMetadata);
    helper.add('confirmationCode', confirmationCode);
    helper.add('password', '***SENSITIVE***');
    helper.add('secretHash', '***SENSITIVE***');
    helper.add('userContextData', userContextData);
    helper.add('username', '***SENSITIVE***');
    return helper.toString();
  }
}

class _ConfirmForgotPasswordRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ConfirmForgotPasswordRequest> {
  const _ConfirmForgotPasswordRequestAwsJson11Serializer()
      : super('ConfirmForgotPasswordRequest');

  @override
  Iterable<Type> get types =>
      const [ConfirmForgotPasswordRequest, _$ConfirmForgotPasswordRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ConfirmForgotPasswordRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ConfirmForgotPasswordRequestBuilder();
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
        case 'ClientId':
          result.clientId = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i4.BuiltMap, [FullType(String), FullType(String)]))
                as _i4.BuiltMap<String, String>));
          }
          break;
        case 'ConfirmationCode':
          result.confirmationCode = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'Password':
          result.password = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'SecretHash':
          if (value != null) {
            result.secretHash = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'UserContextData':
          if (value != null) {
            result.userContextData.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i5.UserContextDataType))
                as _i5.UserContextDataType));
          }
          break;
        case 'Username':
          result.username = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ConfirmForgotPasswordRequest);
    final result = <Object?>[
      'ClientId',
      serializers.serialize(payload.clientId,
          specifiedType: const FullType(String)),
      'ConfirmationCode',
      serializers.serialize(payload.confirmationCode,
          specifiedType: const FullType(String)),
      'Password',
      serializers.serialize(payload.password,
          specifiedType: const FullType(String)),
      'Username',
      serializers.serialize(payload.username,
          specifiedType: const FullType(String))
    ];
    if (payload.analyticsMetadata != null) {
      result
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(payload.analyticsMetadata!,
            specifiedType: const FullType(_i3.AnalyticsMetadataType)));
    }
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(payload.clientMetadata!,
            specifiedType: const FullType(
                _i4.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.secretHash != null) {
      result
        ..add('SecretHash')
        ..add(serializers.serialize(payload.secretHash!,
            specifiedType: const FullType(String)));
    }
    if (payload.userContextData != null) {
      result
        ..add('UserContextData')
        ..add(serializers.serialize(payload.userContextData!,
            specifiedType: const FullType(_i5.UserContextDataType)));
    }
    return result;
  }
}
