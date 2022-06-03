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

library amplify_auth_cognito.cognito_identity_provider.model.get_user_attribute_verification_code_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_user_attribute_verification_code_request.g.dart';

/// Represents the request to get user attribute verification.
abstract class GetUserAttributeVerificationCodeRequest
    with
        _i1.HttpInput<GetUserAttributeVerificationCodeRequest>,
        _i2.AWSEquatable<GetUserAttributeVerificationCodeRequest>
    implements
        Built<GetUserAttributeVerificationCodeRequest,
            GetUserAttributeVerificationCodeRequestBuilder> {
  /// Represents the request to get user attribute verification.
  factory GetUserAttributeVerificationCodeRequest(
      {required String accessToken,
      required String attributeName,
      _i3.BuiltMap<String, String>? clientMetadata}) {
    return _$GetUserAttributeVerificationCodeRequest._(
        accessToken: accessToken,
        attributeName: attributeName,
        clientMetadata: clientMetadata);
  }

  /// Represents the request to get user attribute verification.
  factory GetUserAttributeVerificationCodeRequest.build(
      [void Function(GetUserAttributeVerificationCodeRequestBuilder)
          updates]) = _$GetUserAttributeVerificationCodeRequest;

  const GetUserAttributeVerificationCodeRequest._();

  factory GetUserAttributeVerificationCodeRequest.fromRequest(
          GetUserAttributeVerificationCodeRequest payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _GetUserAttributeVerificationCodeRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserAttributeVerificationCodeRequestBuilder b) {}

  /// The access token returned by the server response to get the user attribute verification code.
  String get accessToken;

  /// The attribute name returned by the server response to get the user attribute verification code.
  String get attributeName;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the GetUserAttributeVerificationCode API action, Amazon Cognito invokes the function that is assigned to the _custom message_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your GetUserAttributeVerificationCode request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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
  _i3.BuiltMap<String, String>? get clientMetadata;
  @override
  GetUserAttributeVerificationCodeRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken, attributeName, clientMetadata];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetUserAttributeVerificationCodeRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('attributeName', attributeName);
    helper.add('clientMetadata', clientMetadata);
    return helper.toString();
  }
}

class _GetUserAttributeVerificationCodeRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetUserAttributeVerificationCodeRequest> {
  const _GetUserAttributeVerificationCodeRequestAwsJson11Serializer()
      : super('GetUserAttributeVerificationCodeRequest');

  @override
  Iterable<Type> get types => const [
        GetUserAttributeVerificationCodeRequest,
        _$GetUserAttributeVerificationCodeRequest
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GetUserAttributeVerificationCodeRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetUserAttributeVerificationCodeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(String)]))
                as _i3.BuiltMap<String, String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetUserAttributeVerificationCodeRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(payload.accessToken,
          specifiedType: const FullType(String)),
      'AttributeName',
      serializers.serialize(payload.attributeName,
          specifiedType: const FullType(String))
    ];
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(payload.clientMetadata!,
            specifiedType: const FullType(
                _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    return result;
  }
}
