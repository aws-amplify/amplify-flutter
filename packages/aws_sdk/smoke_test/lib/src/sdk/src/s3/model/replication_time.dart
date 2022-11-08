// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.replication_time; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_value.dart'
    as _i3;

part 'replication_time.g.dart';

/// A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
abstract class ReplicationTime
    with _i1.AWSEquatable<ReplicationTime>
    implements Built<ReplicationTime, ReplicationTimeBuilder> {
  /// A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
  factory ReplicationTime({
    required _i2.ReplicationTimeStatus status,
    required _i3.ReplicationTimeValue time,
  }) {
    return _$ReplicationTime._(
      status: status,
      time: time,
    );
  }

  /// A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
  factory ReplicationTime.build(
      [void Function(ReplicationTimeBuilder) updates]) = _$ReplicationTime;

  const ReplicationTime._();

  static const List<_i4.SmithySerializer> serializers = [
    ReplicationTimeRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationTimeBuilder b) {}

  /// Specifies whether the replication time is enabled.
  _i2.ReplicationTimeStatus get status;

  /// A container specifying the time by which replication should be complete for all objects and operations on objects.
  _i3.ReplicationTimeValue get time;
  @override
  List<Object?> get props => [
        status,
        time,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationTime');
    helper.add(
      'status',
      status,
    );
    helper.add(
      'time',
      time,
    );
    return helper.toString();
  }
}

class ReplicationTimeRestXmlSerializer
    extends _i4.StructuredSmithySerializer<ReplicationTime> {
  const ReplicationTimeRestXmlSerializer() : super('ReplicationTime');

  @override
  Iterable<Type> get types => const [
        ReplicationTime,
        _$ReplicationTime,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationTime deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationTimeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ReplicationTimeStatus),
          ) as _i2.ReplicationTimeStatus);
          break;
        case 'Time':
          result.time.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ReplicationTimeValue),
          ) as _i3.ReplicationTimeValue));
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
    final payload = (object as ReplicationTime);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ReplicationTime',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i2.ReplicationTimeStatus),
      ));
    result
      ..add(const _i4.XmlElementName('Time'))
      ..add(serializers.serialize(
        payload.time,
        specifiedType: const FullType(_i3.ReplicationTimeValue),
      ));
    return result;
  }
}
