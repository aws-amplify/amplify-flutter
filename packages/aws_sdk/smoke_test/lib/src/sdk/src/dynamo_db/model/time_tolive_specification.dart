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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.time_tolive_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'time_tolive_specification.g.dart';

/// Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
abstract class TimeToliveSpecification
    with _i1.AWSEquatable<TimeToliveSpecification>
    implements Built<TimeToliveSpecification, TimeToliveSpecificationBuilder> {
  /// Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
  factory TimeToliveSpecification({
    required String attributeName,
    required bool enabled,
  }) {
    return _$TimeToliveSpecification._(
      attributeName: attributeName,
      enabled: enabled,
    );
  }

  /// Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
  factory TimeToliveSpecification.build(
          [void Function(TimeToliveSpecificationBuilder) updates]) =
      _$TimeToliveSpecification;

  const TimeToliveSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    TimeToliveSpecificationAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimeToliveSpecificationBuilder b) {}

  /// The name of the TTL attribute used to store the expiration time for items in the table.
  String get attributeName;

  /// Indicates whether TTL is to be enabled (true) or disabled (false) on the table.
  bool get enabled;
  @override
  List<Object?> get props => [
        attributeName,
        enabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TimeToliveSpecification');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'enabled',
      enabled,
    );
    return helper.toString();
  }
}

class TimeToliveSpecificationAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TimeToliveSpecification> {
  const TimeToliveSpecificationAwsJson10Serializer()
      : super('TimeToliveSpecification');

  @override
  Iterable<Type> get types => const [
        TimeToliveSpecification,
        _$TimeToliveSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TimeToliveSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeToliveSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as TimeToliveSpecification);
    final result = <Object?>[
      'AttributeName',
      serializers.serialize(
        payload.attributeName,
        specifiedType: const FullType(String),
      ),
      'Enabled',
      serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ),
    ];
    return result;
  }
}
