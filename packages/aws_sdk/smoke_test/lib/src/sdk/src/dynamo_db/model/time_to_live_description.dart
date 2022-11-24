// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? attributeName,
    _i2.TimeToLiveStatus? timeToLiveStatus,
  }) {
    return _$TimeToLiveDescription._(
      attributeName: attributeName,
      timeToLiveStatus: timeToLiveStatus,
    );
  }

  /// The description of the Time to Live (TTL) status on the specified table.
  factory TimeToLiveDescription.build(
          [void Function(TimeToLiveDescriptionBuilder) updates]) =
      _$TimeToLiveDescription;

  const TimeToLiveDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    TimeToLiveDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimeToLiveDescriptionBuilder b) {}

  /// The name of the TTL attribute for items in the table.
  String? get attributeName;

  /// The TTL status for the table.
  _i2.TimeToLiveStatus? get timeToLiveStatus;
  @override
  List<Object?> get props => [
        attributeName,
        timeToLiveStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TimeToLiveDescription');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'timeToLiveStatus',
      timeToLiveStatus,
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
      switch (key) {
        case 'AttributeName':
          if (value != null) {
            result.attributeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TimeToLiveStatus':
          if (value != null) {
            result.timeToLiveStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TimeToLiveStatus),
            ) as _i2.TimeToLiveStatus);
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
    final payload = (object as TimeToLiveDescription);
    final result = <Object?>[];
    if (payload.attributeName != null) {
      result
        ..add('AttributeName')
        ..add(serializers.serialize(
          payload.attributeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timeToLiveStatus != null) {
      result
        ..add('TimeToLiveStatus')
        ..add(serializers.serialize(
          payload.timeToLiveStatus!,
          specifiedType: const FullType(_i2.TimeToLiveStatus),
        ));
    }
    return result;
  }
}
