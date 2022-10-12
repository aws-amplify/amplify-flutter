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

// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.sign_up_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'sign_up_request.g.dart';

/// Represents the request to register a user.
abstract class SignUpRequest
    with _i1.HttpInput<SignUpRequest>, _i2.AWSEquatable<SignUpRequest>
    implements Built<SignUpRequest, SignUpRequestBuilder> {
  /// Represents the request to register a user.
  factory SignUpRequest({
    _i3.AnalyticsMetadataType? analyticsMetadata,
    required String clientId,
    Map<String, String>? clientMetadata,
    required String password,
    String? secretHash,
    List<_i4.AttributeType>? userAttributes,
    _i5.UserContextDataType? userContextData,
    required String username,
    List<_i4.AttributeType>? validationData,
  }) {
    return _$SignUpRequest._(
      analyticsMetadata: analyticsMetadata,
      clientId: clientId,
      clientMetadata:
          clientMetadata == null ? null : _i6.BuiltMap(clientMetadata),
      password: password,
      secretHash: secretHash,
      userAttributes:
          userAttributes == null ? null : _i6.BuiltList(userAttributes),
      userContextData: userContextData,
      username: username,
      validationData:
          validationData == null ? null : _i6.BuiltList(validationData),
    );
  }

  /// Represents the request to register a user.
  factory SignUpRequest.build([void Function(SignUpRequestBuilder) updates]) =
      _$SignUpRequest;

  const SignUpRequest._();

  factory SignUpRequest.fromRequest(
    SignUpRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SignUpRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SignUpRequestBuilder b) {}

  /// The Amazon Pinpoint analytics metadata that contributes to your metrics for `SignUp` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// The ID of the client associated with the user pool.
  String get clientId;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the following triggers: _pre sign-up_, _custom message_, and _post confirmation_. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your SignUp request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
  ///
  /// For more information, see [Customizing user pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the following:
  ///
  /// *   Store the ClientMetadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the ClientMetadata parameter serves no purpose.
  ///
  /// *   Validate the ClientMetadata value.
  ///
  /// *   Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive information.
  _i6.BuiltMap<String, String>? get clientMetadata;

  /// The password of the user you want to register.
  String get password;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// An array of name-value pairs representing user attributes.
  ///
  /// For custom attributes, you must prepend the `custom:` prefix to the attribute name.
  _i6.BuiltList<_i4.AttributeType>? get userAttributes;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i5.UserContextDataType? get userContextData;

  /// The user name of the user you want to register.
  String get username;

  /// The validation data in the request to register a user.
  _i6.BuiltList<_i4.AttributeType>? get validationData;
  @override
  SignUpRequest getPayload() => this;
  @override
  List<Object?> get props => [
        analyticsMetadata,
        clientId,
        clientMetadata,
        password,
        secretHash,
        userAttributes,
        userContextData,
        username,
        validationData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SignUpRequest');
    helper.add(
      'analyticsMetadata',
      analyticsMetadata,
    );
    helper.add(
      'clientId',
      '***SENSITIVE***',
    );
    helper.add(
      'clientMetadata',
      clientMetadata,
    );
    helper.add(
      'password',
      '***SENSITIVE***',
    );
    helper.add(
      'secretHash',
      '***SENSITIVE***',
    );
    helper.add(
      'userAttributes',
      userAttributes,
    );
    helper.add(
      'userContextData',
      userContextData,
    );
    helper.add(
      'username',
      '***SENSITIVE***',
    );
    helper.add(
      'validationData',
      validationData,
    );
    return helper.toString();
  }
}

class SignUpRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SignUpRequest> {
  const SignUpRequestAwsJson11Serializer() : super('SignUpRequest');

  @override
  Iterable<Type> get types => const [
        SignUpRequest,
        _$SignUpRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SignUpRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AnalyticsMetadata':
          if (value != null) {
            result.analyticsMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalyticsMetadataType),
            ) as _i3.AnalyticsMetadataType));
          }
          break;
        case 'ClientId':
          result.clientId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
          }
          break;
        case 'Password':
          result.password = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SecretHash':
          if (value != null) {
            result.secretHash = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserAttributes':
          if (value != null) {
            result.userAttributes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.AttributeType)],
              ),
            ) as _i6.BuiltList<_i4.AttributeType>));
          }
          break;
        case 'UserContextData':
          if (value != null) {
            result.userContextData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.UserContextDataType),
            ) as _i5.UserContextDataType));
          }
          break;
        case 'Username':
          result.username = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ValidationData':
          if (value != null) {
            result.validationData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.AttributeType)],
              ),
            ) as _i6.BuiltList<_i4.AttributeType>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as SignUpRequest);
    final result = <Object?>[
      'ClientId',
      serializers.serialize(
        payload.clientId,
        specifiedType: const FullType(String),
      ),
      'Password',
      serializers.serialize(
        payload.password,
        specifiedType: const FullType(String),
      ),
      'Username',
      serializers.serialize(
        payload.username,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.analyticsMetadata != null) {
      result
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(
          payload.analyticsMetadata!,
          specifiedType: const FullType(_i3.AnalyticsMetadataType),
        ));
    }
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          payload.clientMetadata!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.secretHash != null) {
      result
        ..add('SecretHash')
        ..add(serializers.serialize(
          payload.secretHash!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userAttributes != null) {
      result
        ..add('UserAttributes')
        ..add(serializers.serialize(
          payload.userAttributes!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i4.AttributeType)],
          ),
        ));
    }
    if (payload.userContextData != null) {
      result
        ..add('UserContextData')
        ..add(serializers.serialize(
          payload.userContextData!,
          specifiedType: const FullType(_i5.UserContextDataType),
        ));
    }
    if (payload.validationData != null) {
      result
        ..add('ValidationData')
        ..add(serializers.serialize(
          payload.validationData!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i4.AttributeType)],
          ),
        ));
    }
    return result;
  }
}
