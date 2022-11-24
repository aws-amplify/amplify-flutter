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

library smoke_test.dynamo_db.model.point_intime_recovery_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_intime_recovery_status.dart'
    as _i2;

part 'point_intime_recovery_description.g.dart';

/// The description of the point in time settings applied to the table.
abstract class PointIntimeRecoveryDescription
    with
        _i1.AWSEquatable<PointIntimeRecoveryDescription>
    implements
        Built<PointIntimeRecoveryDescription,
            PointIntimeRecoveryDescriptionBuilder> {
  /// The description of the point in time settings applied to the table.
  factory PointIntimeRecoveryDescription({
    DateTime? earliestRestorableDateTime,
    DateTime? latestRestorableDateTime,
    _i2.PointIntimeRecoveryStatus? pointIntimeRecoveryStatus,
  }) {
    return _$PointIntimeRecoveryDescription._(
      earliestRestorableDateTime: earliestRestorableDateTime,
      latestRestorableDateTime: latestRestorableDateTime,
      pointIntimeRecoveryStatus: pointIntimeRecoveryStatus,
    );
  }

  /// The description of the point in time settings applied to the table.
  factory PointIntimeRecoveryDescription.build(
          [void Function(PointIntimeRecoveryDescriptionBuilder) updates]) =
      _$PointIntimeRecoveryDescription;

  const PointIntimeRecoveryDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    PointIntimeRecoveryDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PointIntimeRecoveryDescriptionBuilder b) {}

  /// Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days.
  DateTime? get earliestRestorableDateTime;

  /// `LatestRestorableDateTime` is typically 5 minutes before the current time.
  DateTime? get latestRestorableDateTime;

  /// The current state of point in time recovery:
  ///
  /// *   `ENABLED` \- Point in time recovery is enabled.
  ///
  /// *   `DISABLED` \- Point in time recovery is disabled.
  _i2.PointIntimeRecoveryStatus? get pointIntimeRecoveryStatus;
  @override
  List<Object?> get props => [
        earliestRestorableDateTime,
        latestRestorableDateTime,
        pointIntimeRecoveryStatus,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PointIntimeRecoveryDescription');
    helper.add(
      'earliestRestorableDateTime',
      earliestRestorableDateTime,
    );
    helper.add(
      'latestRestorableDateTime',
      latestRestorableDateTime,
    );
    helper.add(
      'pointIntimeRecoveryStatus',
      pointIntimeRecoveryStatus,
    );
    return helper.toString();
  }
}

class PointIntimeRecoveryDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<PointIntimeRecoveryDescription> {
  const PointIntimeRecoveryDescriptionAwsJson10Serializer()
      : super('PointIntimeRecoveryDescription');

  @override
  Iterable<Type> get types => const [
        PointIntimeRecoveryDescription,
        _$PointIntimeRecoveryDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PointIntimeRecoveryDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PointIntimeRecoveryDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EarliestRestorableDateTime':
          if (value != null) {
            result.earliestRestorableDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LatestRestorableDateTime':
          if (value != null) {
            result.latestRestorableDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'PointInTimeRecoveryStatus':
          if (value != null) {
            result.pointIntimeRecoveryStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PointIntimeRecoveryStatus),
            ) as _i2.PointIntimeRecoveryStatus);
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
    final payload = (object as PointIntimeRecoveryDescription);
    final result = <Object?>[];
    if (payload.earliestRestorableDateTime != null) {
      result
        ..add('EarliestRestorableDateTime')
        ..add(serializers.serialize(
          payload.earliestRestorableDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.latestRestorableDateTime != null) {
      result
        ..add('LatestRestorableDateTime')
        ..add(serializers.serialize(
          payload.latestRestorableDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.pointIntimeRecoveryStatus != null) {
      result
        ..add('PointInTimeRecoveryStatus')
        ..add(serializers.serialize(
          payload.pointIntimeRecoveryStatus!,
          specifiedType: const FullType(_i2.PointIntimeRecoveryStatus),
        ));
    }
    return result;
  }
}
