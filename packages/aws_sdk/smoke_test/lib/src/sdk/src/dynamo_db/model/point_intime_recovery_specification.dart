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

library smoke_test.dynamo_db.model.point_intime_recovery_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'point_intime_recovery_specification.g.dart';

/// Represents the settings used to enable point in time recovery.
abstract class PointIntimeRecoverySpecification
    with
        _i1.AWSEquatable<PointIntimeRecoverySpecification>
    implements
        Built<PointIntimeRecoverySpecification,
            PointIntimeRecoverySpecificationBuilder> {
  /// Represents the settings used to enable point in time recovery.
  factory PointIntimeRecoverySpecification(
      {required bool pointIntimeRecoveryEnabled}) {
    return _$PointIntimeRecoverySpecification._(
        pointIntimeRecoveryEnabled: pointIntimeRecoveryEnabled);
  }

  /// Represents the settings used to enable point in time recovery.
  factory PointIntimeRecoverySpecification.build(
          [void Function(PointIntimeRecoverySpecificationBuilder) updates]) =
      _$PointIntimeRecoverySpecification;

  const PointIntimeRecoverySpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    PointIntimeRecoverySpecificationAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PointIntimeRecoverySpecificationBuilder b) {}

  /// Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.
  bool get pointIntimeRecoveryEnabled;
  @override
  List<Object?> get props => [pointIntimeRecoveryEnabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PointIntimeRecoverySpecification');
    helper.add(
      'pointIntimeRecoveryEnabled',
      pointIntimeRecoveryEnabled,
    );
    return helper.toString();
  }
}

class PointIntimeRecoverySpecificationAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<PointIntimeRecoverySpecification> {
  const PointIntimeRecoverySpecificationAwsJson10Serializer()
      : super('PointIntimeRecoverySpecification');

  @override
  Iterable<Type> get types => const [
        PointIntimeRecoverySpecification,
        _$PointIntimeRecoverySpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PointIntimeRecoverySpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PointIntimeRecoverySpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'PointInTimeRecoveryEnabled':
          result.pointIntimeRecoveryEnabled = (serializers.deserialize(
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
    final payload = (object as PointIntimeRecoverySpecification);
    final result = <Object?>[
      'PointInTimeRecoveryEnabled',
      serializers.serialize(
        payload.pointIntimeRecoveryEnabled,
        specifiedType: const FullType(bool),
      ),
    ];
    return result;
  }
}
