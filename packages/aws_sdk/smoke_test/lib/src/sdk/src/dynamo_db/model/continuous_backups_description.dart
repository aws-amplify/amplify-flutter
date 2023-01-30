// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.continuous_backups_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_description.dart'
    as _i3;

part 'continuous_backups_description.g.dart';

/// Represents the continuous backups and point in time recovery settings on the table.
abstract class ContinuousBackupsDescription
    with
        _i1.AWSEquatable<ContinuousBackupsDescription>
    implements
        Built<ContinuousBackupsDescription,
            ContinuousBackupsDescriptionBuilder> {
  /// Represents the continuous backups and point in time recovery settings on the table.
  factory ContinuousBackupsDescription({
    required _i2.ContinuousBackupsStatus continuousBackupsStatus,
    _i3.PointInTimeRecoveryDescription? pointInTimeRecoveryDescription,
  }) {
    return _$ContinuousBackupsDescription._(
      continuousBackupsStatus: continuousBackupsStatus,
      pointInTimeRecoveryDescription: pointInTimeRecoveryDescription,
    );
  }

  /// Represents the continuous backups and point in time recovery settings on the table.
  factory ContinuousBackupsDescription.build(
          [void Function(ContinuousBackupsDescriptionBuilder) updates]) =
      _$ContinuousBackupsDescription;

  const ContinuousBackupsDescription._();

  static const List<_i4.SmithySerializer> serializers = [
    ContinuousBackupsDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContinuousBackupsDescriptionBuilder b) {}

  /// `ContinuousBackupsStatus` can be one of the following states: ENABLED, DISABLED
  _i2.ContinuousBackupsStatus get continuousBackupsStatus;

  /// The description of the point in time recovery settings applied to the table.
  _i3.PointInTimeRecoveryDescription? get pointInTimeRecoveryDescription;
  @override
  List<Object?> get props => [
        continuousBackupsStatus,
        pointInTimeRecoveryDescription,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContinuousBackupsDescription');
    helper.add(
      'continuousBackupsStatus',
      continuousBackupsStatus,
    );
    helper.add(
      'pointInTimeRecoveryDescription',
      pointInTimeRecoveryDescription,
    );
    return helper.toString();
  }
}

class ContinuousBackupsDescriptionAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ContinuousBackupsDescription> {
  const ContinuousBackupsDescriptionAwsJson10Serializer()
      : super('ContinuousBackupsDescription');

  @override
  Iterable<Type> get types => const [
        ContinuousBackupsDescription,
        _$ContinuousBackupsDescription,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ContinuousBackupsDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContinuousBackupsDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ContinuousBackupsStatus':
          result.continuousBackupsStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ContinuousBackupsStatus),
          ) as _i2.ContinuousBackupsStatus);
          break;
        case 'PointInTimeRecoveryDescription':
          if (value != null) {
            result.pointInTimeRecoveryDescription
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PointInTimeRecoveryDescription),
            ) as _i3.PointInTimeRecoveryDescription));
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
    final payload = (object as ContinuousBackupsDescription);
    final result = <Object?>[
      'ContinuousBackupsStatus',
      serializers.serialize(
        payload.continuousBackupsStatus,
        specifiedType: const FullType(_i2.ContinuousBackupsStatus),
      ),
    ];
    if (payload.pointInTimeRecoveryDescription != null) {
      result
        ..add('PointInTimeRecoveryDescription')
        ..add(serializers.serialize(
          payload.pointInTimeRecoveryDescription!,
          specifiedType: const FullType(_i3.PointInTimeRecoveryDescription),
        ));
    }
    return result;
  }
}
