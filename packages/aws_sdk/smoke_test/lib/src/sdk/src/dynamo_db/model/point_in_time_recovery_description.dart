// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.point_in_time_recovery_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_status.dart'
    as _i2;

part 'point_in_time_recovery_description.g.dart';

/// The description of the point in time settings applied to the table.
abstract class PointInTimeRecoveryDescription
    with
        _i1.AWSEquatable<PointInTimeRecoveryDescription>
    implements
        Built<PointInTimeRecoveryDescription,
            PointInTimeRecoveryDescriptionBuilder> {
  /// The description of the point in time settings applied to the table.
  factory PointInTimeRecoveryDescription({
    DateTime? earliestRestorableDateTime,
    DateTime? latestRestorableDateTime,
    _i2.PointInTimeRecoveryStatus? pointInTimeRecoveryStatus,
  }) {
    return _$PointInTimeRecoveryDescription._(
      earliestRestorableDateTime: earliestRestorableDateTime,
      latestRestorableDateTime: latestRestorableDateTime,
      pointInTimeRecoveryStatus: pointInTimeRecoveryStatus,
    );
  }

  /// The description of the point in time settings applied to the table.
  factory PointInTimeRecoveryDescription.build(
          [void Function(PointInTimeRecoveryDescriptionBuilder) updates]) =
      _$PointInTimeRecoveryDescription;

  const PointInTimeRecoveryDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    PointInTimeRecoveryDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PointInTimeRecoveryDescriptionBuilder b) {}

  /// Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days.
  DateTime? get earliestRestorableDateTime;

  /// `LatestRestorableDateTime` is typically 5 minutes before the current time.
  DateTime? get latestRestorableDateTime;

  /// The current state of point in time recovery:
  ///
  /// *   `ENABLED` \- Point in time recovery is enabled.
  ///
  /// *   `DISABLED` \- Point in time recovery is disabled.
  _i2.PointInTimeRecoveryStatus? get pointInTimeRecoveryStatus;
  @override
  List<Object?> get props => [
        earliestRestorableDateTime,
        latestRestorableDateTime,
        pointInTimeRecoveryStatus,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PointInTimeRecoveryDescription');
    helper.add(
      'earliestRestorableDateTime',
      earliestRestorableDateTime,
    );
    helper.add(
      'latestRestorableDateTime',
      latestRestorableDateTime,
    );
    helper.add(
      'pointInTimeRecoveryStatus',
      pointInTimeRecoveryStatus,
    );
    return helper.toString();
  }
}

class PointInTimeRecoveryDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<PointInTimeRecoveryDescription> {
  const PointInTimeRecoveryDescriptionAwsJson10Serializer()
      : super('PointInTimeRecoveryDescription');

  @override
  Iterable<Type> get types => const [
        PointInTimeRecoveryDescription,
        _$PointInTimeRecoveryDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PointInTimeRecoveryDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PointInTimeRecoveryDescriptionBuilder();
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
            result.pointInTimeRecoveryStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PointInTimeRecoveryStatus),
            ) as _i2.PointInTimeRecoveryStatus);
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
    final payload = (object as PointInTimeRecoveryDescription);
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
    if (payload.pointInTimeRecoveryStatus != null) {
      result
        ..add('PointInTimeRecoveryStatus')
        ..add(serializers.serialize(
          payload.pointInTimeRecoveryStatus!,
          specifiedType: const FullType(_i2.PointInTimeRecoveryStatus),
        ));
    }
    return result;
  }
}
