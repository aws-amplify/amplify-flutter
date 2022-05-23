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

library amplify_auth_cognito.cognito_identity_provider.model.attribute_type;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attribute_type.g.dart';

/// Specifies whether the attribute is standard or custom.
abstract class AttributeType
    with _i1.AWSEquatable<AttributeType>
    implements Built<AttributeType, AttributeTypeBuilder> {
  /// Specifies whether the attribute is standard or custom.
  factory AttributeType({required String name, String? value}) {
    return _$AttributeType._(name: name, value: value);
  }

  /// Specifies whether the attribute is standard or custom.
  factory AttributeType.build([void Function(AttributeTypeBuilder) updates]) =
      _$AttributeType;

  const AttributeType._();

  static const List<_i2.SmithySerializer> serializers = [
    _AttributeTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeTypeBuilder b) {}

  /// The name of the attribute.
  String get name;

  /// The value of the attribute.
  String? get value;
  @override
  List<Object?> get props => [name, value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeType');
    helper.add('name', name);
    helper.add('value', '***SENSITIVE***');
    return helper.toString();
  }
}

class _AttributeTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AttributeType> {
  const _AttributeTypeAwsJson11Serializer() : super('AttributeType');

  @override
  Iterable<Type> get types => const [AttributeType, _$AttributeType];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  AttributeType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = AttributeTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(value,
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
    final payload = (object as AttributeType);
    final result = <Object?>[
      'Name',
      serializers.serialize(payload.name, specifiedType: const FullType(String))
    ];
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(payload.value!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
