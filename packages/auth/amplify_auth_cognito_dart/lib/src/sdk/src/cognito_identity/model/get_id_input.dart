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

library amplify_auth_cognito.cognito_identity.model.get_id_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_id_input.g.dart';

/// Input to the GetId action.
abstract class GetIdInput
    with _i1.HttpInput<GetIdInput>, _i2.AWSEquatable<GetIdInput>
    implements Built<GetIdInput, GetIdInputBuilder> {
  /// Input to the GetId action.
  factory GetIdInput(
      {String? accountId,
      required String identityPoolId,
      _i3.BuiltMap<String, String>? logins}) {
    return _$GetIdInput._(
        accountId: accountId, identityPoolId: identityPoolId, logins: logins);
  }

  /// Input to the GetId action.
  factory GetIdInput.build([void Function(GetIdInputBuilder) updates]) =
      _$GetIdInput;

  const GetIdInput._();

  factory GetIdInput.fromRequest(
          GetIdInput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _GetIdInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIdInputBuilder b) {}

  /// A standard AWS account ID (9+ digits).
  String? get accountId;

  /// An identity pool ID in the format REGION:GUID.
  String get identityPoolId;

  /// A set of optional name-value pairs that map provider names to provider tokens. The available provider names for `Logins` are as follows:
  ///
  /// *   Facebook: `graph.facebook.com`
  ///
  /// *   Amazon Cognito user pool: `cognito-idp..amazonaws.com/`, for example, `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`.
  ///
  /// *   Google: `accounts.google.com`
  ///
  /// *   Amazon: `www.amazon.com`
  ///
  /// *   Twitter: `api.twitter.com`
  ///
  /// *   Digits: `www.digits.com`
  _i3.BuiltMap<String, String>? get logins;
  @override
  GetIdInput getPayload() => this;
  @override
  List<Object?> get props => [accountId, identityPoolId, logins];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIdInput');
    helper.add('accountId', accountId);
    helper.add('identityPoolId', identityPoolId);
    helper.add('logins', logins);
    return helper.toString();
  }
}

class _GetIdInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetIdInput> {
  const _GetIdInputAwsJson11Serializer() : super('GetIdInput');

  @override
  Iterable<Type> get types => const [GetIdInput, _$GetIdInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GetIdInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetIdInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'IdentityPoolId':
          result.identityPoolId = (serializers.deserialize(value!,
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
    final payload = (object as GetIdInput);
    final result = <Object?>[
      'IdentityPoolId',
      serializers.serialize(payload.identityPoolId,
          specifiedType: const FullType(String))
    ];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(payload.accountId!,
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
