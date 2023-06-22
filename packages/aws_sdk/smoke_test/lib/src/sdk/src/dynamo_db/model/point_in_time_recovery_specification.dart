// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.point_in_time_recovery_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'point_in_time_recovery_specification.g.dart';

/// Represents the settings used to enable point in time recovery.
abstract class PointInTimeRecoverySpecification
    with
        _i1.AWSEquatable<PointInTimeRecoverySpecification>
    implements
        Built<PointInTimeRecoverySpecification,
            PointInTimeRecoverySpecificationBuilder> {
  /// Represents the settings used to enable point in time recovery.
  factory PointInTimeRecoverySpecification({bool? pointInTimeRecoveryEnabled}) {
    pointInTimeRecoveryEnabled ??= false;
    return _$PointInTimeRecoverySpecification._(
        pointInTimeRecoveryEnabled: pointInTimeRecoveryEnabled);
  }

  /// Represents the settings used to enable point in time recovery.
  factory PointInTimeRecoverySpecification.build(
          [void Function(PointInTimeRecoverySpecificationBuilder) updates]) =
      _$PointInTimeRecoverySpecification;

  const PointInTimeRecoverySpecification._();

  static const List<_i2.SmithySerializer<PointInTimeRecoverySpecification>>
      serializers = [PointInTimeRecoverySpecificationAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PointInTimeRecoverySpecificationBuilder b) {
    b.pointInTimeRecoveryEnabled = false;
  }

  /// Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.
  bool get pointInTimeRecoveryEnabled;
  @override
  List<Object?> get props => [pointInTimeRecoveryEnabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PointInTimeRecoverySpecification')
          ..add(
            'pointInTimeRecoveryEnabled',
            pointInTimeRecoveryEnabled,
          );
    return helper.toString();
  }
}

class PointInTimeRecoverySpecificationAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<PointInTimeRecoverySpecification> {
  const PointInTimeRecoverySpecificationAwsJson10Serializer()
      : super('PointInTimeRecoverySpecification');

  @override
  Iterable<Type> get types => const [
        PointInTimeRecoverySpecification,
        _$PointInTimeRecoverySpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PointInTimeRecoverySpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PointInTimeRecoverySpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PointInTimeRecoveryEnabled':
          result.pointInTimeRecoveryEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PointInTimeRecoverySpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PointInTimeRecoverySpecification(:pointInTimeRecoveryEnabled) =
        object;
    result$.addAll([
      'PointInTimeRecoveryEnabled',
      serializers.serialize(
        pointInTimeRecoveryEnabled,
        specifiedType: const FullType(bool),
      ),
    ]);
    return result$;
  }
}
