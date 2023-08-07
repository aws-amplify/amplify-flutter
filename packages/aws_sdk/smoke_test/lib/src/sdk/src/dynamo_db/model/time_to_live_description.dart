// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.time_to_live_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_status.dart';

part 'time_to_live_description.g.dart';

/// The description of the Time to Live (TTL) status on the specified table.
abstract class TimeToLiveDescription
    with _i1.AWSEquatable<TimeToLiveDescription>
    implements Built<TimeToLiveDescription, TimeToLiveDescriptionBuilder> {
  /// The description of the Time to Live (TTL) status on the specified table.
  factory TimeToLiveDescription({
    TimeToLiveStatus? timeToLiveStatus,
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

  static const List<_i2.SmithySerializer<TimeToLiveDescription>> serializers = [
    TimeToLiveDescriptionAwsJson10Serializer()
  ];

  /// The TTL status for the table.
  TimeToLiveStatus? get timeToLiveStatus;

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
    extends _i2.StructuredSmithySerializer<TimeToLiveDescription> {
  const TimeToLiveDescriptionAwsJson10Serializer()
      : super('TimeToLiveDescription');

  @override
  Iterable<Type> get types => const [
        TimeToLiveDescription,
        _$TimeToLiveDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(TimeToLiveStatus),
          ) as TimeToLiveStatus);
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
          specifiedType: const FullType(TimeToLiveStatus),
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
