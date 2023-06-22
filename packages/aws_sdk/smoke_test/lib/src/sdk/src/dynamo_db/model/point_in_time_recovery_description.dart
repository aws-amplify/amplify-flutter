// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.PointInTimeRecoveryStatus? pointInTimeRecoveryStatus,
    DateTime? earliestRestorableDateTime,
    DateTime? latestRestorableDateTime,
  }) {
    return _$PointInTimeRecoveryDescription._(
      pointInTimeRecoveryStatus: pointInTimeRecoveryStatus,
      earliestRestorableDateTime: earliestRestorableDateTime,
      latestRestorableDateTime: latestRestorableDateTime,
    );
  }

  /// The description of the point in time settings applied to the table.
  factory PointInTimeRecoveryDescription.build(
          [void Function(PointInTimeRecoveryDescriptionBuilder) updates]) =
      _$PointInTimeRecoveryDescription;

  const PointInTimeRecoveryDescription._();

  static const List<_i3.SmithySerializer<PointInTimeRecoveryDescription>>
      serializers = [PointInTimeRecoveryDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PointInTimeRecoveryDescriptionBuilder b) {}

  /// The current state of point in time recovery:
  ///
  /// *   `ENABLED` \- Point in time recovery is enabled.
  ///
  /// *   `DISABLED` \- Point in time recovery is disabled.
  _i2.PointInTimeRecoveryStatus? get pointInTimeRecoveryStatus;

  /// Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days.
  DateTime? get earliestRestorableDateTime;

  /// `LatestRestorableDateTime` is typically 5 minutes before the current time.
  DateTime? get latestRestorableDateTime;
  @override
  List<Object?> get props => [
        pointInTimeRecoveryStatus,
        earliestRestorableDateTime,
        latestRestorableDateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PointInTimeRecoveryDescription')
      ..add(
        'pointInTimeRecoveryStatus',
        pointInTimeRecoveryStatus,
      )
      ..add(
        'earliestRestorableDateTime',
        earliestRestorableDateTime,
      )
      ..add(
        'latestRestorableDateTime',
        latestRestorableDateTime,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PointInTimeRecoveryStatus':
          result.pointInTimeRecoveryStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PointInTimeRecoveryStatus),
          ) as _i2.PointInTimeRecoveryStatus);
        case 'EarliestRestorableDateTime':
          result.earliestRestorableDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LatestRestorableDateTime':
          result.latestRestorableDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PointInTimeRecoveryDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PointInTimeRecoveryDescription(
      :pointInTimeRecoveryStatus,
      :earliestRestorableDateTime,
      :latestRestorableDateTime
    ) = object;
    if (pointInTimeRecoveryStatus != null) {
      result$
        ..add('PointInTimeRecoveryStatus')
        ..add(serializers.serialize(
          pointInTimeRecoveryStatus,
          specifiedType: const FullType(_i2.PointInTimeRecoveryStatus),
        ));
    }
    if (earliestRestorableDateTime != null) {
      result$
        ..add('EarliestRestorableDateTime')
        ..add(serializers.serialize(
          earliestRestorableDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (latestRestorableDateTime != null) {
      result$
        ..add('LatestRestorableDateTime')
        ..add(serializers.serialize(
          latestRestorableDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
