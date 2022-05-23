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

library amplify_auth_cognito.cognito_identity_provider.model.user_context_data_type;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_context_data_type.g.dart';

/// Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
abstract class UserContextDataType
    with _i1.AWSEquatable<UserContextDataType>
    implements Built<UserContextDataType, UserContextDataTypeBuilder> {
  /// Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  factory UserContextDataType({String? encodedData}) {
    return _$UserContextDataType._(encodedData: encodedData);
  }

  /// Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  factory UserContextDataType.build(
          [void Function(UserContextDataTypeBuilder) updates]) =
      _$UserContextDataType;

  const UserContextDataType._();

  static const List<_i2.SmithySerializer> serializers = [
    _UserContextDataTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserContextDataTypeBuilder b) {}

  /// Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  String? get encodedData;
  @override
  List<Object?> get props => [encodedData];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserContextDataType');
    helper.add('encodedData', encodedData);
    return helper.toString();
  }
}

class _UserContextDataTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UserContextDataType> {
  const _UserContextDataTypeAwsJson11Serializer()
      : super('UserContextDataType');

  @override
  Iterable<Type> get types =>
      const [UserContextDataType, _$UserContextDataType];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UserContextDataType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserContextDataTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EncodedData':
          if (value != null) {
            result.encodedData = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserContextDataType);
    final result = <Object?>[];
    if (payload.encodedData != null) {
      result
        ..add('EncodedData')
        ..add(serializers.serialize(payload.encodedData!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
