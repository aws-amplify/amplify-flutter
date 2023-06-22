// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.time_to_live_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_status.dart'
    as _i2;

part 'time_to_live_description.g.dart';

/// The description of the Time to Live (TTL) status on the specified table.
abstract class TimeToLiveDescription
    with _i1.AWSEquatable<TimeToLiveDescription>
    implements Built<TimeToLiveDescription, TimeToLiveDescriptionBuilder> {
  /// The description of the Time to Live (TTL) status on the specified table.
  factory TimeToLiveDescription({
    _i2.TimeToLiveStatus? timeToLiveStatus,
    String? attributeName,
  }) {
    return _$TimeToLiveDescription._(
      timeToLiveStatus: timeToLiveStatus,
      attributeName: attributeName,
    );
  }

  /// The description of the Time to Live (TTL) status on the specified table.
  factory TimeToLiveDescription.build(
          [void Function(TimeToLiveDescriptionBuilder) updates]) =
      _$TimeToLiveDescription;

  const TimeToLiveDescription._();

  static const List<_i3.SmithySerializer<TimeToLiveDescription>> serializers = [
    TimeToLiveDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimeToLiveDescriptionBuilder b) {}

  /// The TTL status for the table.
  _i2.TimeToLiveStatus? get timeToLiveStatus;

  /// The name of the TTL attribute for items in the table.
  String? get attributeName;
  @override
  List<Object?> get props => [
        timeToLiveStatus,
        attributeName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TimeToLiveDescription')
      ..add(
        'timeToLiveStatus',
        timeToLiveStatus,
      )
      ..add(
        'attributeName',
        attributeName,
      );
    return helper.toString();
  }
}

class TimeToLiveDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<TimeToLiveDescription> {
  const TimeToLiveDescriptionAwsJson10Serializer()
      : super('TimeToLiveDescription');

  @override
  Iterable<Type> get types => const [
        TimeToLiveDescription,
        _$TimeToLiveDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TimeToLiveDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeToLiveDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TimeToLiveStatus':
          result.timeToLiveStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TimeToLiveStatus),
          ) as _i2.TimeToLiveStatus);
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TimeToLiveDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TimeToLiveDescription(:timeToLiveStatus, :attributeName) = object;
    if (timeToLiveStatus != null) {
      result$
        ..add('TimeToLiveStatus')
        ..add(serializers.serialize(
          timeToLiveStatus,
          specifiedType: const FullType(_i2.TimeToLiveStatus),
        ));
    }
    if (attributeName != null) {
      result$
        ..add('AttributeName')
        ..add(serializers.serialize(
          attributeName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
