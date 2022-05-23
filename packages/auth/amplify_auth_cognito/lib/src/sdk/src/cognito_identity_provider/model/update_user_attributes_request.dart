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

library amplify_auth_cognito.cognito_identity_provider.model.update_user_attributes_request;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_user_attributes_request.g.dart';

/// Represents the request to update user attributes.
abstract class UpdateUserAttributesRequest
    with
        _i1.HttpInput<UpdateUserAttributesRequest>,
        _i2.AWSEquatable<UpdateUserAttributesRequest>
    implements
        Built<UpdateUserAttributesRequest, UpdateUserAttributesRequestBuilder> {
  /// Represents the request to update user attributes.
  factory UpdateUserAttributesRequest(
      {required String accessToken,
      _i3.BuiltMap<String, String>? clientMetadata,
      required _i3.BuiltList<_i4.AttributeType> userAttributes}) {
    return _$UpdateUserAttributesRequest._(
        accessToken: accessToken,
        clientMetadata: clientMetadata,
        userAttributes: userAttributes);
  }

  /// Represents the request to update user attributes.
  factory UpdateUserAttributesRequest.build(
          [void Function(UpdateUserAttributesRequestBuilder) updates]) =
      _$UpdateUserAttributesRequest;

  const UpdateUserAttributesRequest._();

  factory UpdateUserAttributesRequest.fromRequest(
          UpdateUserAttributesRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _UpdateUserAttributesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserAttributesRequestBuilder b) {}

  /// The access token for the request to update user attributes.
  String get accessToken;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned to the _custom message_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your UpdateUserAttributes request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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

  /// An array of name-value pairs representing user attributes.
  ///
  /// For custom attributes, you must prepend the `custom:` prefix to the attribute name.
  _i3.BuiltList<_i4.AttributeType> get userAttributes;
  @override
  UpdateUserAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken, clientMetadata, userAttributes];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserAttributesRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('clientMetadata', clientMetadata);
    helper.add('userAttributes', userAttributes);
    return helper.toString();
  }
}

class _UpdateUserAttributesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UpdateUserAttributesRequest> {
  const _UpdateUserAttributesRequestAwsJson11Serializer()
      : super('UpdateUserAttributesRequest');

  @override
  Iterable<Type> get types =>
      const [UpdateUserAttributesRequest, _$UpdateUserAttributesRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UpdateUserAttributesRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UpdateUserAttributesRequestBuilder();
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
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(String)]))
                as _i3.BuiltMap<String, String>));
          }
          break;
        case 'UserAttributes':
          result.userAttributes.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i3.BuiltList, [FullType(_i4.AttributeType)]))
              as _i3.BuiltList<_i4.AttributeType>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UpdateUserAttributesRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(payload.accessToken,
          specifiedType: const FullType(String)),
      'UserAttributes',
      serializers.serialize(payload.userAttributes,
          specifiedType:
              const FullType(_i3.BuiltList, [FullType(_i4.AttributeType)]))
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
