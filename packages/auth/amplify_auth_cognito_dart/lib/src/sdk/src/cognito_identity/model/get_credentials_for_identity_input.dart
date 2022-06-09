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

library amplify_auth_cognito.cognito_identity.model.get_credentials_for_identity_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_credentials_for_identity_input.g.dart';

/// Input to the `GetCredentialsForIdentity` action.
abstract class GetCredentialsForIdentityInput
    with
        _i1.HttpInput<GetCredentialsForIdentityInput>,
        _i2.AWSEquatable<GetCredentialsForIdentityInput>
    implements
        Built<GetCredentialsForIdentityInput,
            GetCredentialsForIdentityInputBuilder> {
  /// Input to the `GetCredentialsForIdentity` action.
  factory GetCredentialsForIdentityInput(
      {String? customRoleArn,
      required String identityId,
      _i3.BuiltMap<String, String>? logins}) {
    return _$GetCredentialsForIdentityInput._(
        customRoleArn: customRoleArn, identityId: identityId, logins: logins);
  }

  /// Input to the `GetCredentialsForIdentity` action.
  factory GetCredentialsForIdentityInput.build(
          [void Function(GetCredentialsForIdentityInputBuilder) updates]) =
      _$GetCredentialsForIdentityInput;

  const GetCredentialsForIdentityInput._();

  factory GetCredentialsForIdentityInput.fromRequest(
          GetCredentialsForIdentityInput payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _GetCredentialsForIdentityInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCredentialsForIdentityInputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.
  String? get customRoleArn;

  /// A unique identifier in the format REGION:GUID.
  String get identityId;

  /// A set of optional name-value pairs that map provider names to provider tokens. The name-value pair will follow the syntax "provider\_name": "provider\_user_identifier".
  ///
  /// Logins should not be specified when trying to get credentials for an unauthenticated identity.
  ///
  /// The Logins parameter is required when using identities associated with external identity providers such as Facebook. For examples of `Logins` maps, see the code examples in the [External Identity Providers](https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html) section of the Amazon Cognito Developer Guide.
  _i3.BuiltMap<String, String>? get logins;
  @override
  GetCredentialsForIdentityInput getPayload() => this;
  @override
  List<Object?> get props => [customRoleArn, identityId, logins];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetCredentialsForIdentityInput');
    helper.add('customRoleArn', customRoleArn);
    helper.add('identityId', identityId);
    helper.add('logins', logins);
    return helper.toString();
  }
}

class _GetCredentialsForIdentityInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetCredentialsForIdentityInput> {
  const _GetCredentialsForIdentityInputAwsJson11Serializer()
      : super('GetCredentialsForIdentityInput');

  @override
  Iterable<Type> get types =>
      const [GetCredentialsForIdentityInput, _$GetCredentialsForIdentityInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GetCredentialsForIdentityInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetCredentialsForIdentityInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CustomRoleArn':
          if (value != null) {
            result.customRoleArn = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'IdentityId':
          result.identityId = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'Logins':
          if (value != null) {
            result.logins.replace((serializers.deserialize(value,
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
    final payload = (object as GetCredentialsForIdentityInput);
    final result = <Object?>[
      'IdentityId',
      serializers.serialize(payload.identityId,
          specifiedType: const FullType(String))
    ];
    if (payload.customRoleArn != null) {
      result
        ..add('CustomRoleArn')
        ..add(serializers.serialize(payload.customRoleArn!,
            specifiedType: const FullType(String)));
    }
    if (payload.logins != null) {
      result
        ..add('Logins')
        ..add(serializers.serialize(payload.logins!,
            specifiedType: const FullType(
                _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    return result;
  }
}
